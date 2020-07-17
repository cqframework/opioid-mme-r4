

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
* dosageInstruction[0].timing.repeat (uses frequency, frequencyMax, period, and periodUnit)
* dosageInstruction[0].doseAndRate[0] (first and only element)
* dosageInstruction[0].asNeeded (to determine PRN)
* status (to determine whether it is a draft order)

This results in input suitable for use by the base MME calculator, the MME value is determined for each input medication, and the result is summarized.
