
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

> **Caution**: All doses are in mg/day except for fentanyl, which is mcg/hr. 

> **Caution**: Equianalgesic dose conversions are only estimates and cannot account for individual variability in genetics and pharmacokinetics. 

> **Caution**: Do not use the calculated dose in MMEs to determine the doses to use when converting one opioid to another; when converting opioids, the new opioid is typically dosed at a substantially lower dose than the calculated MME dose to avoid overdose because of incomplete cross-tolerance and individual variability in opioid pharmacokinetics. Consult the FDA approved product labeling for specific guidance on medications.

> **Caution**: Use particular caution with methadone dose conversions because methadone has a long and variable half-life, and peak respiratory depressant effect occurs later and lasts longer than peak analgesic effect. 

> **Caution**: Use particular caution with transdermal fentanyl because it is dosed in mcg/hr instead of mg/day, and its absorption is affected by heat and other factors. 

> **Caution**: Buprenorphine products approved for the treatment of pain are not included in the table because of their partial µ-receptor agonist activity and resultant ceiling effects compared with full µ-receptor agonists. 

> **Caution**: These conversion factors should not be applied to dosage decisions related to the management of opioid use disorder.

#### MME Doses for Commonly Prescribed Opioids for Pain Management Table

| Opioid                           | Conversion Factor |
|----------------------------------|:-----------------:|
| Codeine                          | 0.15 |
| Fentanyl transdermal (in mcg/hr) | 2.4 |
| Hydrocodone                      | 1.0 |
| Hydromorphone                    | 5.0 |
| Methadone                        | 4.7 |
| Morphine                         | 1.0 |
| Oxycodone                        | 1.5 |
| Oxymorphone                      | 3.0 |
| Tapentadol [^1]                  | 0.4 |
| Tramadol [^2]                    | 0.2 |
{: .grid }

[^1]: Tapentadol is a µ-receptor agonist and norepinephrine reuptake inhibitor. MMEs are based on degree of µ-receptor agonist activity; however, it is unknown whether tapentadol is associated with overdose in the same dose-dependent manner as observed with medications that are solely µ-receptor agonists.

[^2]: Tramadol is a µ-receptor agonist and norepinephrine and serotonin reuptake inhibitor. MMEs are based on degree of µ-receptor agonist activity; however, it is unknown whether tramadol is associated with overdose in the same dose-dependent manner as observed with medications that are solely µ-receptor agonists.
