

The base MME calculator only requires the following information for each medication the patient is currently on:

* RxNorm Code
* Dose Quantity (as a UCUM unit, for a single dose of the medication)
* Doses Per Day (as a decimal)

There is logic to normalize from a FHIR MedicationRequest resource that makes use of the following elements:
* medication (as a CodeableConcept)
* dosageInstruction[0] (first and only element)
* dosageInstruction[0].timing.repeat (uses frequency, frequencyMax, period, and periodUnit)
* dosageInstruction[0].doseAndRate[0] (first and only element)
* dosageInstruction[0].asNeeded (to determine PRN)
* status (to determine whether it is a draft order)
