library OMTKLogicTests version '3.0.0'
include OMTKLogic version '3.0.0'

// Ingredient Codes
code acetaminophen: '161' from OMTKLogic.RXNORM display 'acetaminophen'
code aspirin: '1191' from OMTKLogic.RXNORM display 'aspirin'
code atropine: '1223' from OMTKLogic.RXNORM display 'atropine'
code bromodiphenhydramine: '19759' from OMTKLogic.RXNORM display 'bromodiphenhydramine'
code brompheniramine: '1767' from OMTKLogic.RXNORM display 'brompheniramine'
code buprenorphine: '1819' from OMTKLogic.RXNORM display 'buprenorphine'
code butalbital: '19860' from OMTKLogic.RXNORM display 'butalbital'
code butorphanol: '1841' from OMTKLogic.RXNORM display 'butorphanol'
code caffeine: '1886' from OMTKLogic.RXNORM display 'caffeine'
code carisoprodol: '2101' from OMTKLogic.RXNORM display 'carisoprodol'
code chlorcyclizine: '2354' from OMTKLogic.RXNORM display 'chlorcyclizine'
code chlorpheniramine: '2400' from OMTKLogic.RXNORM display 'chlorpheniramine'
code codeine: '2670' from OMTKLogic.RXNORM display 'codeine'
code dexbrompheniramine: '22696' from OMTKLogic.RXNORM display 'dexbrompheniramine'
code dexchlorpheniramine: '22697' from OMTKLogic.RXNORM display 'dexchlorpheniramine'
code dihydrocodeine: '23088' from OMTKLogic.RXNORM display 'dihydrocodeine'
code diphenhydramine: '3498' from OMTKLogic.RXNORM display 'diphenhydramine'
code fentanyl: '4337' from OMTKLogic.RXNORM display 'fentanyl'
code guaiacolsulfonate: '636827' from OMTKLogic.RXNORM display 'guaiacolsulfonate'
code guaifenesin: '5032' from OMTKLogic.RXNORM display 'guaifenesin'
code homatropine: '27084' from OMTKLogic.RXNORM display 'homatropine'
code hydrocodone: '5489' from OMTKLogic.RXNORM display 'hydrocodone'
code hydromorphone: '3423' from OMTKLogic.RXNORM display 'hydromorphone'
code ibuprofen: '5640' from OMTKLogic.RXNORM display 'ibuprofen'
code kaolin: '6102' from OMTKLogic.RXNORM display 'kaolin'
code levomethadyl: '237005' from OMTKLogic.RXNORM display 'levomethadyl'
code levorphanol: '6378' from OMTKLogic.RXNORM display 'levorphanol'
code meperidine: '6754' from OMTKLogic.RXNORM display 'levorphanol'
code methadone: '6813' from OMTKLogic.RXNORM display 'methadone'
code morphine: '7052' from OMTKLogic.RXNORM display 'morphine'
code naloxone: '7242' from OMTKLogic.RXNORM display 'naloxone'
code naltrexone: '7243' from OMTKLogic.RXNORM display 'naltrexone'
code oxycodone: '7804' from OMTKLogic.RXNORM display 'oxycodone'
code oxymorphone: '7814' from OMTKLogic.RXNORM display 'oxymorphone'
code pentazocine: '8001' from OMTKLogic.RXNORM display 'pentazocine'
code phenylephrine: '8163' from OMTKLogic.RXNORM display 'phenylephrine'
code phenylpropanolamine: '8175' from OMTKLogic.RXNORM display 'phenylpropanolamine'
code promethazine: '8745' from OMTKLogic.RXNORM display 'promethazine'
code pseudoephedrine: '8896' from OMTKLogic.RXNORM display 'pseudoephedrine'
code pyrilamine: '9009' from OMTKLogic.RXNORM display 'pyrilamine'
code ropivacaine: '35780' from OMTKLogic.RXNORM display 'ropivacaine'
code tapentadol: '787390' from OMTKLogic.RXNORM display 'tapentadol'
code tramadol: '10689' from OMTKLogic.RXNORM display 'tramadol'
code triprolidine: '10849' from OMTKLogic.RXNORM display 'triprolidine'

// Dose Form Codes
code "Transdermal System": '316987' from OMTKLogic.RXNORM display 'Transdermal System'
code "Oral Tablet": '317541' from OMTKLogic.RXNORM display 'Oral Tablet'
code "Buccal Tablet": '970789' from OMTKLogic.RXNORM display 'Buccal Tablet'
code "Chewable Tablet": '91058' from OMTKLogic.RXNORM display 'Chewable Tablet'
code "Sublingual Tablet": '317007' from OMTKLogic.RXNORM display 'Sublingual Tablet'
code "Oral Lozenge": '316992' from OMTKLogic.RXNORM display 'Oral Lozenge'
code "Oral Capsule": '316965' from OMTKLogic.RXNORM display 'Oral Capsule'
code "Buccal Film": '858080' from OMTKLogic.RXNORM display 'Buccal Film'
code "Nasal Spray": '126542' from OMTKLogic.RXNORM display 'Nasal Spray'
code "Mucosal Spray": '346163' from OMTKLogic.RXNORM display 'Mucosal Spray'
code "Metered Dose Nasal Spray": '1797831' from OMTKLogic.RXNORM display 'Metered Dose Nasal Spray'
code "Topical Ointment": '316985' from OMTKLogic.RXNORM display 'Topical Ointment'
code "Extended Release Oral Capsule": '316943' from OMTKLogic.RXNORM display 'Extended Release Oral Capsule'
code "Extended Release Oral Tablet": '316946' from OMTKLogic.RXNORM display 'Extended Release Oral Tablet'
code "Oral Solution": '316968' from OMTKLogic.RXNORM display 'Oral Solution'
code "Injection": '1649574' from OMTKLogic.RXNORM display 'Injection'

// define function ToUCUM(unit String):
define TestToUCUM_MG: OMTKLogic.ToUCUM('MG') = 'mg'
define TestToUCUM_MGPerACTUAT: OMTKLogic.ToUCUM('MG/ACTUAT') = 'mg/{actuat}'
define TestToUCUM_MGPerML: OMTKLogic.ToUCUM('MG/ML') = 'mg/mL'
define TestToUCUM_MGPerHR: OMTKLogic.ToUCUM('MG/HR') = 'mg/h'
define TestToUCUM_Unknown: OMTKLogic.ToUCUM('Unknown') is null

// define function ToDaily(frequency Integer, period Quantity):
define TestToDaily_h: OMTKLogic.ToDaily(2, 4 'h') = 12
define TestToDaily_min: OMTKLogic.ToDaily(1, 30 'min') = 48
define TestToDaily_s: OMTKLogic.ToDaily(1, 30 's') = 2880
define TestToDaily_d: OMTKLogic.ToDaily(4, 1 'd') = 4
define TestToDaily_wk: OMTKLogic.ToDaily(2, 1 'wk') = 0.28571428
define TestToDaily_mo: OMTKLogic.ToDaily(10, 1 'mo') = 0.33333333
define TestToDaily_a: OMTKLogic.ToDaily(10, 1 'a') = 0.02739726
define TestToDaily_unknown: OMTKLogic.ToDaily(10, 1 'x') is null

//define function GetConversionFactor(ingredientCode Code, dailyDose Quantity, doseFormCode Code):
define TestGetConversionFactor_161: OMTKLogic.GetConversionFactor(acetaminophen, 200 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1191: OMTKLogic.GetConversionFactor(aspirin, 200 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1223: OMTKLogic.GetConversionFactor(atropine, 0.6 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1767: OMTKLogic.GetConversionFactor(brompheniramine, 1 'mg', "Chewable Tablet") = 0
define TestGetConversionFactor_1819: OMTKLogic.GetConversionFactor(buprenorphine, 0.02 'mg/h', "Transdermal System") = 12.6
define TestGetConversionFactor_1819_Film: OMTKLogic.GetConversionFactor(buprenorphine, 0.075 'mg', "Buccal Film") = 30
define TestGetConversionFactor_1841: OMTKLogic.GetConversionFactor(butorphanol, 1 'mg/{actuat}', "Metered Dose Nasal Spray") = 7
define TestGetConversionFactor_1886: OMTKLogic.GetConversionFactor(caffeine, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2101: OMTKLogic.GetConversionFactor(carisoprodol, 250 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2354: OMTKLogic.GetConversionFactor(chlorcyclizine, 25 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2400: OMTKLogic.GetConversionFactor(chlorpheniramine, 0.5 'mg', "Chewable Tablet") = 0
define TestGetConversionFactor_2670: OMTKLogic.GetConversionFactor(codeine, 12.5 'mg', "Oral Tablet") = 0.15
define TestGetConversionFactor_3423: OMTKLogic.GetConversionFactor(hydromorphone, 1 'mg', "Oral Tablet") = 4
define TestGetConversionFactor_3498: OMTKLogic.GetConversionFactor(diphenhydramine, 18.75 'mg', "Oral Capsule") = 0
define TestGetConversionFactor_4337: OMTKLogic.GetConversionFactor(fentanyl, 0.1 'mg', "Buccal Tablet") = 0.13
define TestGetConversionFactor_4337_TransdermalSystem: OMTKLogic.GetConversionFactor(fentanyl, 0.012 'mg/h', "Transdermal System") = 2.4
define TestGetConversionFactor_4337_NasalSpray: OMTKLogic.GetConversionFactor(fentanyl, 0.1 'mg/{actuat}', "Mucosal Spray") = 0.16
define TestGetConversionFactor_4337_BuccalFilm: OMTKLogic.GetConversionFactor(fentanyl, 1.2 'mg', "Buccal Film") = 0.18
define TestGetConversionFactor_5032: OMTKLogic.GetConversionFactor(guaifenesin, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_5489: OMTKLogic.GetConversionFactor(hydrocodone, 10 'mg', "Oral Tablet") = 1
define TestGetConversionFactor_5640: OMTKLogic.GetConversionFactor(ibuprofen, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_6102: OMTKLogic.GetConversionFactor(kaolin, 0.145 'mg/mg', "Topical Ointment") = 0
define TestGetConversionFactor_6378: OMTKLogic.GetConversionFactor(levorphanol, 2 'mg', "Oral Tablet") = 11
define TestGetConversionFactor_6754: OMTKLogic.GetConversionFactor(meperidine, 100 'mg', "Oral Tablet") = 0.1
define TestGetConversionFactor_6813: OMTKLogic.GetConversionFactor(methadone, 10 'mg', "Oral Tablet") = 4
define TestGetConversionFactor_6813_30: OMTKLogic.GetConversionFactor(methadone, 30 'mg', "Oral Tablet") = 8
define TestGetConversionFactor_6813_50: OMTKLogic.GetConversionFactor(methadone, 50 'mg', "Oral Tablet") = 10
define TestGetConversionFactor_6813_70: OMTKLogic.GetConversionFactor(methadone, 70 'mg', "Oral Tablet") = 12
define TestGetConversionFactor_7052: OMTKLogic.GetConversionFactor(morphine, 10 'mg', "Oral Tablet") = 1
define TestGetConversionFactor_7242: OMTKLogic.GetConversionFactor(naloxone, 0.7 'mg', "Buccal Film") = 0
define TestGetConversionFactor_7243: OMTKLogic.GetConversionFactor(naltrexone, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_7804: OMTKLogic.GetConversionFactor(oxycodone, 36 'mg', "Extended Release Oral Capsule") = 1.5
define TestGetConversionFactor_7814: OMTKLogic.GetConversionFactor(oxymorphone, 10 'mg', "Oral Tablet") = 3
define TestGetConversionFactor_8001: OMTKLogic.GetConversionFactor(pentazocine, 50 'mg', "Oral Tablet") = 0.37
define TestGetConversionFactor_8163: OMTKLogic.GetConversionFactor(phenylephrine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_8175: OMTKLogic.GetConversionFactor(phenylpropanolamine, 18 'mg', "Extended Release Oral Tablet") = 0
define TestGetConversionFactor_8745: OMTKLogic.GetConversionFactor(promethazine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_8896: OMTKLogic.GetConversionFactor(pseudoephedrine, 45 'mg', "Oral Capsule") = 0
define TestGetConversionFactor_9009: OMTKLogic.GetConversionFactor(pyrilamine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_10689: OMTKLogic.GetConversionFactor(tramadol, 100 'mg', "Oral Tablet") = 0.1
define TestGetConversionFactor_10849: OMTKLogic.GetConversionFactor(triprolidine, 2.5 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_19759: OMTKLogic.GetConversionFactor(bromodiphenhydramine, 2.5 'mg/mL', "Oral Solution") = 0
define TestGetConversionFactor_19860: OMTKLogic.GetConversionFactor(butalbital, 50 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_22696: OMTKLogic.GetConversionFactor(dexbrompheniramine, 1 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_22697: OMTKLogic.GetConversionFactor(dexchlorpheniramine, 2 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_23088: OMTKLogic.GetConversionFactor(dihydrocodeine, 16 'mg', "Oral Tablet") = 0.25
define TestGetConversionFactor_27084: OMTKLogic.GetConversionFactor(homatropine, 5 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_35780: OMTKLogic.GetConversionFactor(ropivacaine, 10 'mg/mL', "Injection") = 0
define TestGetConversionFactor_237005: OMTKLogic.GetConversionFactor(levomethadyl, 10 'mg/mL', "Oral Solution") = 8
define TestGetConversionFactor_636827: OMTKLogic.GetConversionFactor(guaiacolsulfonate, 70 'mg/mL', "Oral Solution") = 0
define TestGetConversionFactor_787390: OMTKLogic.GetConversionFactor(tapentadol, 50 'mg', "Oral Tablet") = 0.4
define TestGetConversionFactor_Message: OMTKLogic.GetConversionFactor(null, 10 'mg', null) is null

//define function EnsureMicrogramQuantity(strength Quantity):
define TestEnsureMicrogramQuantityNormal: OMTKLogic.EnsureMicrogramQuantity(10 'mg') = 10 'mg'
define TestEnsureMicrogramQuantityMicrogram: OMTKLogic.EnsureMicrogramQuantity(0.001 'mg') = 1 'ug'
define TestEnsureMicrogramQuantityMicrogramPerML: OMTKLogic.EnsureMicrogramQuantity(0.05 'mg/mL') = 50 'ug/mL'

//define function GetIngredients(rxNormCode Code):
//GetIngredients:
//  List<{
//    rxNormCode Code,
//    doseFormCode Code,
//    ingredientCode code,
//    strength Quantity
//  }>
define TestIngredients_Tapentadol: OMTKLogic.GetIngredients(Code '1148797' from OMTKLogic.RXNORM)
define TestIngredients_Phenylephrine: OMTKLogic.GetIngredients(Code '1357883' from OMTKLogic.RXNORM)
define TestIngredients_Fentanyl: OMTKLogic.GetIngredients(Code '1603495' from OMTKLogic.RXNORM)
define TestIngredients_Fentanyl_Spray: OMTKLogic.GetIngredients(Code '1115577' from OMTKLogic.RXNORM)
define TestIngredients_Fentanyl_Ropivicaine: OMTKLogic.GetIngredients(Code '1233687' from OMTKLogic.RXNORM)
define TestIngredients_Methadone: OMTKLogic.GetIngredients(Code '864706' from OMTKLogic.RXNORM)

// 100 mg X (60 tablets/30 days) X 0.4 = 80 MME/day
define TestDrug_Tapentadol: { rxNormCode: Code '1148797' from OMTKLogic.RXNORM display '12 HR tapentadol 100 MG Extended Release Oral Tablet', doseQuantity: 1 '{tab}', dosesPerDay: 2.0, mme: 80 '{MME}/d' }
// 5 ug/hr buprenorphine patch X (4 patches/28 days)X 12.6 = 9 MME/day
define TestDrug_Buprenorphine: { rxNormCode: Code '904880' from OMTKLogic.RXNORM display '168 HR buprenorphine 0.005 MG/HR Transdermal System', doseQuantity: 1 '{path}', dosesPerDay: 0.1429, mme: 9 '{MME}/d' }
// 12 HR brompheniramine maleate 6 MG / phenylephrine hydrochloride 30 MG Extended Release Oral Tablet X (60 tables/30 days) X 0.0 = 0 MME/day
define TestDrug_Phenylephrine: { rxNormCode: Code '1357883' from OMTKLogic.RXNORM display '12 HR brompheniramine maleate 6 MG / phenylephrine hydrochloride 30 MG Extended Release Oral Tablet', doseQuantity: 1 '{tab}', dosesPerDay: 2.0, mme: 0 '{MME}/d' }
// 25 µg/hr fentanyl patch X (10 patches/ 30 days) X 7.2  = 60 MME/day
// NOTE: Current calculation results in 20.00 due to the conversion factor of 2.4
// See this issue for discussion: https://github.com/cqframework/opioid-cds/issues/60
define TestDrug_Fentanyl_Transdermal: { rxNormCode: Code '245134' from OMTKLogic.RXNORM display '72 HR fentanyl 0.025 MG/HR Transdermal System', doseQuantity: 1 '{patch}', dosesPerDay: 0.3333, mme: 60 '{MME}/d' }
// 37.5 µg/hr fentanyl patch X (10 patches/ 30 days) X 7.2  = 89.1 MME/day
// NOTE: Same issue as above, conversion factor is 2.4, but should be 7.2
define TestDrug_Fentanyl_0375_Transdermal: { rxNormCode: Code '1603495' from OMTKLogic.RXNORM display '72 HR fentanyl 0.0375 MG/HR Transdermal System', doseQuantity: 1 '{patch}', dosesPerDay: 0.3333, mme: 89.1 '{MME}/d' }
// Injection calculation not supported
define TestDrug_Fentanyl_Injection: { rxNormCode: Code '1244687' from OMTKLogic.RXNORM display 'fentanyl 0.004 MG/ML / ropivacaine hydrochloride 2 MG/ML Injectable Solution', doseQuantity: 1 '{injection}', dosesPerDay: 1.0, mme: null as Quantity }
// 10 MG methadone X (180 tablets/ 30 days) X 10 = 600 MME/day
define TestDrug_Methadone: { rxNormCode: Code '864706' from OMTKLogic.RXNORM display 'methadone hydrochloride 10 MG Oral Tablet', doseQuantity: 2 '{tab}', dosesPerDay: 3.0, mme: 600 '{MME}/d' }
// 0.4 MG fentanyl spray X (90 sprays/ 30 days) X 0.16 = 0.192 MME/day
// NOTE: Had to add Metered Dose Nasal Spray as a dose form code to the GetConversionFactor for Fentanyl, same category as other sprays
define TestDrug_Fentanyl_Spray: { rxNormCode: Code '1115577' from OMTKLogic.RXNORM display 'fentaNYL 0.4 MG/ACTUAT', doseQuantity: 1 '{actuat}', dosesPerDay: 3.0, mme: 0.192 '{MME}/d' }
// 1.2 mg buccal film X (60 films/ 30 days) X 0.18 = 0.432 MME/day
// NOTE: This drug is not in our OMTKData, not sure why 858087 is an SDC RXCUI and the code is active, and was introduced in 2009
define TestDrug_Fentanyl_Film: { rxNormCode: Code '858087' from OMTKLogic.RXNORM display 'fentanyl 1.2 MG Buccal Film', doseQuantity: 1 '{film}', dosesPerDay: 2.0, mme: 0.432 '{MME}/d' }
// 0.1 mg fentanyl spray X (90 sprays/ 30 days) X 0.16 = 0.048 MME/day
define TestDrug_Fentanyl_Mucosal_Spray: { rxNormCode: Code '1237050' from OMTKLogic.RXNORM display 'fentanyl 0.1 MG/ACTUAT Mucosal Spray', doseQuantity: 1 '{actuat}', dosesPerDay: 3.0, mme: 0.048 '{MME}/d' }
// 10 mg oxycodone tablets X (120 tablets/ 30 days) X 1.5 = 60 MME/day
define TestDrug_Oxycodone: { rxNormCode: Code '1049683' from OMTKLogic.RXNORM display 'oxycodone hydrochloride 10 MG Oral Tablet', doseQuantity: 1 'tab', dosesPerDay: 4.0, mme: 60 '{MME}/d' }
// 30 mg oxycodone tables X (60 tablets/ 30 days) X 1.5 = 90 MME/day
define TestDrug_Oxycodone_ER: { rxNormCode: Code '1049574' from OMTKLogic.RXNORM display '12 HR oxycodone hydrochloride 30 MG Extended Release Oral Tablet', doseQuantity: 1 '{tab}', dosesPerDay: 2.0, mme: 90 '{MME}/d' }
// TODO: Determine how this will be reflected, I don't see any RxNav data that uses bottles?
// For example, a butorphanol spray is packaged as a 2.5ml bottle.
// This MME file indicates the strength is 10mg/ml and the conversion factor is 7.
// The prescription data lists a quantity of 1 and a days supply of 30.
// If it is determined that the quantity likely reflects the number of bottles,
// the quantity should be changed to 2.5 since each bottle of that butorphanol
// product contains 2.5 ml. Using the formula above, this yields 10mg/ml  x 2.5ml/30 days x 7= 5.8 MME/day.

define TestDrugs: {
  TestDrug_Tapentadol,
  TestDrug_Buprenorphine,
  TestDrug_Phenylephrine,
  TestDrug_Fentanyl_Transdermal,
  TestDrug_Fentanyl_0375_Transdermal,
  TestDrug_Fentanyl_Injection,
  TestDrug_Methadone,
  TestDrug_Fentanyl_Spray,
  TestDrug_Fentanyl_Film,
  TestDrug_Fentanyl_Mucosal_Spray,
  TestDrug_Oxycodone,
  TestDrug_Oxycodone_ER
}

//define function StripPer(unit String):
define TestStripPer_UGPerH: OMTKLogic.StripPer('ug/h') = 'ug'
define TestStripPer_MGPerTab: OMTKLogic.StripPer('mg/{tab}') = 'mg'

//define function GetDailyDose(ingredientCode Code, strength Quantity, doseFormCode Code, doseQuantity Quantity, dosesPerDay Decimal):
define TestGetDailyDose:
  flatten (
    TestDrugs D
      let i: OMTKLogic.GetIngredients(D.rxNormCode)
      return i I
        return OMTKLogic.GetDailyDose(I.ingredientCode, I.strength, I.doseFormCode, D.doseQuantity, D.dosesPerDay)
  )

//define function GetMedicationName(rxNormCode Code):
//define function GetDailyDoseDescription(ingredientCode Code, ingredientName String, strength Quantity, doseFormCode Code, doseFormName String, doseQuantity Quantity, dosesPerDay Decimal, dailyDose Quantity):

//define function CalculateMMEs(medications List<Tuple { rxNormCode Code, doseQuantity Quantity, dosesPerDay Decimal }>):
define TestCalculateMMEs:
  TestDrugs D
    let mmes: OMTKLogic.CalculateMMEs({ D d return { rxNormCode: d.rxNormCode, doseQuantity: d.doseQuantity, dosesPerDay: d.dosesPerDay }})
    return {
      rxNormCode: D.rxNormCode,
      mme: Sum(mmes.mme),
      expectedMme: D.mme,
      description: Combine(mmes.dailyDoseDescription, ', ')
    }
