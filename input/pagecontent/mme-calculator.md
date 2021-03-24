
This implementation guide provides a shareable implementation of a Morphine Milligram Equivalent (MME) calculator
for medications, and logic for applying that base calculator to FHIR MedicationRequest resources. The calculation
makes certain assumptions about the data elements that will be present in those MedicationRequest resources, and
these expectations are expressed by the [MMEMedicationRequest](StructureDefinition-mmemedicationrequest.html) profile.

The base MME calculator only requires the following information for each medication the patient is currently on:

* RxNorm Code
* Dose Quantity (as a UCUM unit, for a single dose of the medication)
* Doses Per Day (as a decimal)

The base MME calculator uses ingredient data to determine the daily dose from these inputs, using the following approach:

1. If the dose form is a patch, the daily dose is Doses Per Day * Dose Quantity (e.g. number of patches) * Ingredient Strength, with the Ingredient Strength Unit
2. If the dose unit is in mass units (e.g. mg or mcg), the daily dose = Doses Per Day * Dose Quantity, with the Dose Quantity Unit
3. If the dose quantity is in volume units (e.g. mL), the daily dose = Doses Per Day * Dose Quantity * Strength, with the Numerator Strength Unit (e.g. remove /mL)
4. Otherwise, the dose quantity is in terms of tablets or sprays, the daily dose = Doses Per Day * DoseQuantity * Strength the Numerator Strength Unit (e.g. remove /{actuat})

This results in a set of ingredients with {MME}/d values for each opioid-related component ingredient of the drug, and these values are multiplied by the appropriate conversion factor, as described by the [Conversion Factor](https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf) information provided as part of the CDC Opioid Prescribing Guideline. These values are then added together to determine the {MME}/d for the specific drug.

Determining MME at a point in time then requires consideration of all active opioid medications at that point. For each medication, a dose quantity, and a doses per day is determined. For FHIR R4, this done with the Prescriptions function to normalize from FHIR MedicationRequest resources, making use of the following elements:
* medication (as a CodeableConcept)
* dosageInstruction[0] (first and only element)
* dosageInstruction[0].timing.repeat (uses frequency, frequencyMax, period, and periodUnit, and timeOfDay)
* dosageInstruction[0].doseAndRate[0] (first and only element)
* dosageInstruction[0].asNeeded (to determine PRN)
* status (to determine whether it is a draft order)

This results in input suitable for use by the base MME calculator, the MME value is determined for each input medication, and the result is summarized.

### Cautions

> **Caution**: Do not use the calculated dose in MMEs to determine dosage for converting one opioid to another--the new opioid should be dosed lower to avoid unintentional overdose caused by incomplete cross-tolerance and individual differences in opioid pharmacokinetics. Consult the medication label.

> **Caution**: Dosage thresholds in the 2016 CDC Guideline are based on overdose risk when opioids are prescribed for pain and should not guide dosing of medication treatment for opioid use disorder (i.e., medication-assisted treatment [MAT]).

> **Caution**: Tapentadol is a mu receptor agonist and norepinephrine reuptake inhibitor. MMEs are based on degree of mu-receptor agonist activity, but it is unknown if this drug is associated with overdose in the same dose-dependent manner as observed with medications that are solely mu receptor agonists.

> **Extra Caution**:
> * Methadone: the conversion factor increases at higher doses
> * Fentanyl: dosed in mcg/hr instead of mg/day, and absorption is affected by heat and other factors.
