library MMECalculatorTests version '3.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include MMECalculator version '3.0.0'
include OMTKLogic version '3.0.0'
include OMTKData version '3.0.0'

context Patient

//define MedicationRequestCode: [MedicationRequest] M return M.medication
//define MedicationRequestRxNormCode: [MedicationRequest] M return OMTKLogic.GetMedicationCode(M.medication)
/*
define MedicationRequestRxNormCode:
  (([MedicationRequest] M return M.medication C return FHIRHelpers.ToConcept(C)).codes) X
    where X.system = 'http://www.nlm.nih.gov/research/umls/rxnorm'
      return {
        drugCode: X.code,
        code:
          singleton from (
            OMTKData.DrugIngredients DI
              where DI.drugCode = ToInteger(X.code)
              return Code {
                code: ToString(DI.drugCode),
                system: 'http://www.nlm.nih.gov/research/umls/rxnorm',
                display: DI.drugName
              }
          )
      }
*/
//define MedicationRequestRxNormCodings:
//  [MedicationRequest] M
//    return (M.medication.coding C where C.system = 'http://www.nlm.nih.gov/research/umls/rxnorm' return C.code)
//define MedicationRequests: [MedicationRequest]
//define Prescriptions: MMECalculator.Prescriptions([MedicationRequest])
define TotalMME: MMECalculator.TotalMME([MedicationRequest])
