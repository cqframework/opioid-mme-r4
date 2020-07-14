library MMECalculatorTests version '3.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include MMECalculator version '3.0.0'
include Tx version '3.0.0'

context Patient

define MedicationRequests: [MedicationRequest]

define Prescriptions: MMECalculator.Prescriptions(MedicationRequests)

define DosageInstruction: flatten (MedicationRequests MR return MR.dosageInstruction)
define DoseAndRate: flatten (DosageInstruction DI return DI.doseAndRate)
define Dose: DoseAndRate DR where DR.dose is FHIR.Quantity

define TotalMME: MMECalculator.TotalMME([MedicationRequest])
