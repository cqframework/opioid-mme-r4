library ConversionFactorsTests version '3.0.0'

using FHIR version '4.0.1'

include ConversionFactors version '3.0.0'
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
code "Prefilled Syringe": '721656' from OMTKLogic.RXNORM display 'Prefilled Syringe'

context Patient

/*
//define function GetConversionFactor(ingredientCode System.Code, dailyDose System.Quantity, doseFormCode System.Code):
//define function GetConversionFactor(ingredientCode Code, dailyDose Quantity, doseFormCode Code):
define TestGetConversionFactor_161: ConversionFactors.GetConversionFactor(acetaminophen, 200 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1191: ConversionFactors.GetConversionFactor(aspirin, 200 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1223: ConversionFactors.GetConversionFactor(atropine, 0.6 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_1767: ConversionFactors.GetConversionFactor(brompheniramine, 1 'mg', "Chewable Tablet") = 0
define TestGetConversionFactor_1819: ConversionFactors.GetConversionFactor(buprenorphine, 0.02 'mg/h', "Transdermal System") = 12600
define TestGetConversionFactor_1819_Film: ConversionFactors.GetConversionFactor(buprenorphine, 0.075 'mg', "Buccal Film") = 30
define TestGetConversionFactor_1841: ConversionFactors.GetConversionFactor(butorphanol, 1 'mg/{actuat}', "Metered Dose Nasal Spray") = 7
define TestGetConversionFactor_1886: ConversionFactors.GetConversionFactor(caffeine, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2101: ConversionFactors.GetConversionFactor(carisoprodol, 250 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2354: ConversionFactors.GetConversionFactor(chlorcyclizine, 25 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_2400: ConversionFactors.GetConversionFactor(chlorpheniramine, 0.5 'mg', "Chewable Tablet") = 0
define TestGetConversionFactor_2670: ConversionFactors.GetConversionFactor(codeine, 12.5 'mg', "Oral Tablet") = 0.15
define TestGetConversionFactor_3423: ConversionFactors.GetConversionFactor(hydromorphone, 1 'mg', "Oral Tablet") = 4
define TestGetConversionFactor_3498: ConversionFactors.GetConversionFactor(diphenhydramine, 18.75 'mg', "Oral Capsule") = 0
define TestGetConversionFactor_4337: ConversionFactors.GetConversionFactor(fentanyl, 0.1 'mg', "Buccal Tablet") = 130
define TestGetConversionFactor_4337_TransdermalSystem: ConversionFactors.GetConversionFactor(fentanyl, 0.012 'mg/h', "Transdermal System") = 7200
define TestGetConversionFactor_4337_NasalSpray: ConversionFactors.GetConversionFactor(fentanyl, 0.1 'mg/{actuat}', "Mucosal Spray") = 160
define TestGetConversionFactor_4337_BuccalFilm: ConversionFactors.GetConversionFactor(fentanyl, 1.2 'mg', "Buccal Film") = 180
define TestGetConversionFactor_5032: ConversionFactors.GetConversionFactor(guaifenesin, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_5489: ConversionFactors.GetConversionFactor(hydrocodone, 10 'mg', "Oral Tablet") = 1
define TestGetConversionFactor_5640: ConversionFactors.GetConversionFactor(ibuprofen, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_6102: ConversionFactors.GetConversionFactor(kaolin, 0.145 'mg/mg', "Topical Ointment") = 0
define TestGetConversionFactor_6378: ConversionFactors.GetConversionFactor(levorphanol, 2 'mg', "Oral Tablet") = 11
define TestGetConversionFactor_6754: ConversionFactors.GetConversionFactor(meperidine, 100 'mg', "Oral Tablet") = 0.1
define TestGetConversionFactor_6813: ConversionFactors.GetConversionFactor(methadone, 10 'mg', "Oral Tablet") = 4
define TestGetConversionFactor_6813_30: ConversionFactors.GetConversionFactor(methadone, 30 'mg', "Oral Tablet") = 8
define TestGetConversionFactor_6813_50: ConversionFactors.GetConversionFactor(methadone, 50 'mg', "Oral Tablet") = 10
define TestGetConversionFactor_6813_70: ConversionFactors.GetConversionFactor(methadone, 70 'mg', "Oral Tablet") = 12
define TestGetConversionFactor_7052: ConversionFactors.GetConversionFactor(morphine, 10 'mg', "Oral Tablet") = 1
define TestGetConversionFactor_7242: ConversionFactors.GetConversionFactor(naloxone, 0.7 'mg', "Buccal Film") = 0
define TestGetConversionFactor_7243: ConversionFactors.GetConversionFactor(naltrexone, 100 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_7804: ConversionFactors.GetConversionFactor(oxycodone, 36 'mg', "Extended Release Oral Capsule") = 1.5
define TestGetConversionFactor_7814: ConversionFactors.GetConversionFactor(oxymorphone, 10 'mg', "Oral Tablet") = 3
define TestGetConversionFactor_8001: ConversionFactors.GetConversionFactor(pentazocine, 50 'mg', "Oral Tablet") = 0.37
define TestGetConversionFactor_8163: ConversionFactors.GetConversionFactor(phenylephrine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_8175: ConversionFactors.GetConversionFactor(phenylpropanolamine, 18 'mg', "Extended Release Oral Tablet") = 0
define TestGetConversionFactor_8745: ConversionFactors.GetConversionFactor(promethazine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_8896: ConversionFactors.GetConversionFactor(pseudoephedrine, 45 'mg', "Oral Capsule") = 0
define TestGetConversionFactor_9009: ConversionFactors.GetConversionFactor(pyrilamine, 10 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_10689: ConversionFactors.GetConversionFactor(tramadol, 100 'mg', "Oral Tablet") = 0.1
define TestGetConversionFactor_10849: ConversionFactors.GetConversionFactor(triprolidine, 2.5 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_19759: ConversionFactors.GetConversionFactor(bromodiphenhydramine, 2.5 'mg/mL', "Oral Solution") = 0
define TestGetConversionFactor_19860: ConversionFactors.GetConversionFactor(butalbital, 50 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_22696: ConversionFactors.GetConversionFactor(dexbrompheniramine, 1 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_22697: ConversionFactors.GetConversionFactor(dexchlorpheniramine, 2 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_23088: ConversionFactors.GetConversionFactor(dihydrocodeine, 16 'mg', "Oral Tablet") = 0.25
define TestGetConversionFactor_27084: ConversionFactors.GetConversionFactor(homatropine, 5 'mg', "Oral Tablet") = 0
define TestGetConversionFactor_35780: ConversionFactors.GetConversionFactor(ropivacaine, 10 'mg/mL', "Injection") = 0
define TestGetConversionFactor_237005: ConversionFactors.GetConversionFactor(levomethadyl, 10 'mg/mL', "Oral Solution") = 8
define TestGetConversionFactor_636827: ConversionFactors.GetConversionFactor(guaiacolsulfonate, 70 'mg/mL', "Oral Solution") = 0
define TestGetConversionFactor_787390: ConversionFactors.GetConversionFactor(tapentadol, 50 'mg', "Oral Tablet") = 0.4
define TestGetConversionFactor_Message: ConversionFactors.GetConversionFactor(null, 10 'mg', null) is null
*/

//define ConversionFactorSupplement:
define TestConversionFactorSupplementName: ConversionFactors.ConversionFactorSupplementName
define TestConversionFactorSupplement: ConversionFactors.ConversionFactorSupplement
define TestCodeSystems: [CodeSystem]

/*
Converts a range value boundary to a Decimal (or null for a wildcard)
*/
//define function ToRangeValue(value System.String):
define TestToRangeValueValid: ConversionFactors.ToRangeValue('1')
define TestToRangeValueValidDecimal: ConversionFactors.ToRangeValue('0.15')
define TestToRangeValueWildcard: ConversionFactors.ToRangeValue('*')
define TestToRangeValueInvalid: ConversionFactors.ToRangeValue('foo')

/*
Converts the property value of a dose-range-conversion-factor property to the dose range
<low-value>-<high-value>:<conversion-factor>
Note that low-value and/or high-value may be wildcards '*'
*/
//define function ToDoseRange(propertyValue FHIR.string):
define TestToDoseRangeValid: ConversionFactors.ToDoseRange(FHIR.string { value: '1-2:12' })
define TestToDoseRangeBeginning: ConversionFactors.ToDoseRange(FHIR.string { value: '*-5:12'})
define TestToDoseRangeEnding: ConversionFactors.ToDoseRange(FHIR.string { value: '1-*:12'})
define TestToDoseRangeInvalid: ConversionFactors.ToDoseRange(FHIR.string { value: 'foo' })

/*
Converts the property value of a dose-range-conversion-factor property to the conversion factor
<low-value>-<high-value>:<conversion-factor>
*/
//define function ToDoseRangeConversionFactor(propertyValue FHIR.string):
define TestToRangeConversionFactor: ConversionFactors.ToDoseRangeConversionFactor(FHIR.string { value: '1-2:12' })
define TestToRangeConversionFactorInvalid: ConversionFactors.ToDoseRangeConversionFactor(FHIR.string { value: 'foo' })

/*
Converts the property value of a dose-form-conversion-factor property to the dose form
<dose-form-code>:<conversion-factor>
*/
//define function ToDoseForm(propertyValue FHIR.string):
define TestToDoseForm: ConversionFactors.ToDoseForm(FHIR.string { value: '12345:12' })
define TestToDoseFormInvalid: ConversionFactors.ToDoseForm(FHIR.string { value: 'foo' })

/*
Converts the property value of a dose-form-conversion-factor property to the conversion factor
<dose-form-code>:<conversion-factor>
*/
//define function ToDoseFormConversionFactor(propertyValue FHIR.string):
define TestToDoseFormConversionFactor: ConversionFactors.ToDoseFormConversionFactor(FHIR.string { value: '12345:12' })
define TestToDoseFormConversionFactorInvalid: ConversionFactors.ToDoseFormConversionFactor(FHIR.string { value: 'foo' })

/*
Returns the conversion factor for a conversion-factor property
NOTE: These functions are used to avoid use of _is_ and _as_
*/
//define function ToConversionFactor(propertyValue FHIR.decimal):
define TestToConversionFactor: ConversionFactors.ToConversionFactor(FHIR.decimal { value: 12 })

/*
Looks up the conversion factor for the given ingredient, daily dose, and dose form from the
configured conversion factor supplement, if available.

If no conversion factor supplement is configured, returns null
*/
//define function LookupConversionFactor(ingredientCode System.Code, dailyDose System.Quantity, doseFormCode System.Code):

/*
// With CDCMMEClinicalConversionFactors:
define TestLookupCDCClinicalConversionFactor_2670: ConversionFactors.LookupConversionFactor(codeine, 12.5 'mg', "Oral Tablet") = 0.15
define TestLookupCDCClinicalConversionFactor_4337_TransdermalSystem: ConversionFactors.LookupConversionFactor(fentanyl, 0.012 'mg/h', "Transdermal System") = 7200
define TestLookupCDCClinicalConversionFactor_4337_NasalSpray: ConversionFactors.LookupConversionFactor(fentanyl, 0.1 'mg/{actuat}', "Mucosal Spray") is null
define TestLookupCDCClinicalConversionFactor_4337_BuccalFilm: ConversionFactors.LookupConversionFactor(fentanyl, 1.2 'mg', "Buccal Film") is null
define TestLookupCDCClinicalConversionFactor_6813: ConversionFactors.LookupConversionFactor(methadone, 10 'mg', "Oral Tablet") = 4
define TestLookupCDCClinicalConversionFactor_6813_30: ConversionFactors.LookupConversionFactor(methadone, 30 'mg', "Oral Tablet") = 8
define TestLookupCDCClinicalConversionFactor_6813_50: ConversionFactors.LookupConversionFactor(methadone, 50 'mg', "Oral Tablet") = 10
define TestLookupCDCClinicalConversionFactor_6813_70: ConversionFactors.LookupConversionFactor(methadone, 70 'mg', "Oral Tablet") = 12
define TestLookupCDCClinicalConversionFactor_Invalid: ConversionFactors.LookupConversionFactor(aspirin, 200 'mg', "Oral Tablet") is null
*/

/*
// With CDCMMEResearchConversionFactors:
define TestLookupCDCResearchConversionFactor_161: ConversionFactors.LookupConversionFactor(acetaminophen, 200 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_1191: ConversionFactors.LookupConversionFactor(aspirin, 200 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_1223: ConversionFactors.LookupConversionFactor(atropine, 0.6 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_1767: ConversionFactors.LookupConversionFactor(brompheniramine, 1 'mg', "Chewable Tablet") is null
define TestLookupCDCResearchConversionFactor_1819: ConversionFactors.LookupConversionFactor(buprenorphine, 0.02 'mg/h', "Transdermal System") = 12600
define TestLookupCDCResearchConversionFactor_1819_Film: ConversionFactors.LookupConversionFactor(buprenorphine, 0.075 'mg', "Buccal Film") = 30
define TestLookupCDCResearchConversionFactor_1841: ConversionFactors.LookupConversionFactor(butorphanol, 1 'mg/{actuat}', "Metered Dose Nasal Spray") = 7
define TestLookupCDCResearchConversionFactor_1886: ConversionFactors.LookupConversionFactor(caffeine, 100 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_2101: ConversionFactors.LookupConversionFactor(carisoprodol, 250 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_2354: ConversionFactors.LookupConversionFactor(chlorcyclizine, 25 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_2400: ConversionFactors.LookupConversionFactor(chlorpheniramine, 0.5 'mg', "Chewable Tablet") is null
define TestLookupCDCResearchConversionFactor_2670: ConversionFactors.LookupConversionFactor(codeine, 12.5 'mg', "Oral Tablet") = 0.15
define TestLookupCDCResearchConversionFactor_3423: ConversionFactors.LookupConversionFactor(hydromorphone, 1 'mg', "Oral Tablet") = 4
define TestLookupCDCResearchConversionFactor_3498: ConversionFactors.LookupConversionFactor(diphenhydramine, 18.75 'mg', "Oral Capsule") is null
define TestLookupCDCResearchConversionFactor_4337: ConversionFactors.LookupConversionFactor(fentanyl, 0.1 'mg', "Buccal Tablet") = 130
define TestLookupCDCResearchConversionFactor_4337_TransdermalSystem: ConversionFactors.LookupConversionFactor(fentanyl, 0.012 'mg/h', "Transdermal System") = 7200
define TestLookupCDCResearchConversionFactor_4337_NasalSpray: ConversionFactors.LookupConversionFactor(fentanyl, 0.1 'mg/{actuat}', "Mucosal Spray") = 160
define TestLookupCDCResearchConversionFactor_4337_BuccalFilm: ConversionFactors.LookupConversionFactor(fentanyl, 1.2 'mg', "Buccal Film") = 180
define TestLookupCDCResearchConversionFactor_5032: ConversionFactors.LookupConversionFactor(guaifenesin, 100 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_5489: ConversionFactors.LookupConversionFactor(hydrocodone, 10 'mg', "Oral Tablet") = 1
define TestLookupCDCResearchConversionFactor_5640: ConversionFactors.LookupConversionFactor(ibuprofen, 100 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_6102: ConversionFactors.LookupConversionFactor(kaolin, 0.145 'mg/mg', "Topical Ointment") is null
define TestLookupCDCResearchConversionFactor_6378: ConversionFactors.LookupConversionFactor(levorphanol, 2 'mg', "Oral Tablet") = 11
define TestLookupCDCResearchConversionFactor_6754: ConversionFactors.LookupConversionFactor(meperidine, 100 'mg', "Oral Tablet") = 0.1
define TestLookupCDCResearchConversionFactor_6813: ConversionFactors.LookupConversionFactor(methadone, 10 'mg', "Oral Tablet") = 3
define TestLookupCDCResearchConversionFactor_7052: ConversionFactors.LookupConversionFactor(morphine, 10 'mg', "Oral Tablet") = 1
define TestLookupCDCResearchConversionFactor_7242: ConversionFactors.LookupConversionFactor(naloxone, 0.7 'mg', "Buccal Film") is null
define TestLookupCDCResearchConversionFactor_7243: ConversionFactors.LookupConversionFactor(naltrexone, 100 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_7804: ConversionFactors.LookupConversionFactor(oxycodone, 36 'mg', "Extended Release Oral Capsule") = 1.5
define TestLookupCDCResearchConversionFactor_7814: ConversionFactors.LookupConversionFactor(oxymorphone, 10 'mg', "Oral Tablet") = 3
define TestLookupCDCResearchConversionFactor_8001: ConversionFactors.LookupConversionFactor(pentazocine, 50 'mg', "Oral Tablet") = 0.37
define TestLookupCDCResearchConversionFactor_8163: ConversionFactors.LookupConversionFactor(phenylephrine, 10 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_8175: ConversionFactors.LookupConversionFactor(phenylpropanolamine, 18 'mg', "Extended Release Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_8745: ConversionFactors.LookupConversionFactor(promethazine, 10 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_8896: ConversionFactors.LookupConversionFactor(pseudoephedrine, 45 'mg', "Oral Capsule") is null
define TestLookupCDCResearchConversionFactor_9009: ConversionFactors.LookupConversionFactor(pyrilamine, 10 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_10689: ConversionFactors.LookupConversionFactor(tramadol, 100 'mg', "Oral Tablet") = 0.1
define TestLookupCDCResearchConversionFactor_10849: ConversionFactors.LookupConversionFactor(triprolidine, 2.5 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_19759: ConversionFactors.LookupConversionFactor(bromodiphenhydramine, 2.5 'mg/mL', "Oral Solution") is null
define TestLookupCDCResearchConversionFactor_19860: ConversionFactors.LookupConversionFactor(butalbital, 50 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_22696: ConversionFactors.LookupConversionFactor(dexbrompheniramine, 1 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_22697: ConversionFactors.LookupConversionFactor(dexchlorpheniramine, 2 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_23088: ConversionFactors.LookupConversionFactor(dihydrocodeine, 16 'mg', "Oral Tablet") = 0.25
define TestLookupCDCResearchConversionFactor_27084: ConversionFactors.LookupConversionFactor(homatropine, 5 'mg', "Oral Tablet") is null
define TestLookupCDCResearchConversionFactor_35780: ConversionFactors.LookupConversionFactor(ropivacaine, 10 'mg/mL', "Injection") is null
define TestLookupCDCResearchConversionFactor_237005: ConversionFactors.LookupConversionFactor(levomethadyl, 10 'mg/mL', "Oral Solution") = 8
define TestLookupCDCResearchConversionFactor_636827: ConversionFactors.LookupConversionFactor(guaiacolsulfonate, 70 'mg/mL', "Oral Solution") is null
define TestLookupCDCResearchConversionFactor_787390: ConversionFactors.LookupConversionFactor(tapentadol, 50 'mg', "Oral Tablet") = 0.4
define TestLookupCDCResearchConversionFactor_Message: ConversionFactors.LookupConversionFactor(null, 10 'mg', null) is null
*/

// With UCMMMEConversionFactors:
define TestLookupUCMConversionFactor_161: ConversionFactors.LookupConversionFactor(acetaminophen, 200 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_1191: ConversionFactors.LookupConversionFactor(aspirin, 200 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_1223: ConversionFactors.LookupConversionFactor(atropine, 0.6 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_1767: ConversionFactors.LookupConversionFactor(brompheniramine, 1 'mg', "Chewable Tablet") is null
define TestLookupUCMConversionFactor_1819: ConversionFactors.LookupConversionFactor(buprenorphine, 0.02 'mg/h', "Transdermal System") = 12600
define TestLookupUCMConversionFactor_1819_Film: ConversionFactors.LookupConversionFactor(buprenorphine, 0.075 'mg', "Buccal Film") = 30
define TestLookupUCMConversionFactor_1841: ConversionFactors.LookupConversionFactor(butorphanol, 1 'mg/{actuat}', "Metered Dose Nasal Spray") = 7
define TestLookupUCMConversionFactor_1886: ConversionFactors.LookupConversionFactor(caffeine, 100 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_2101: ConversionFactors.LookupConversionFactor(carisoprodol, 250 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_2354: ConversionFactors.LookupConversionFactor(chlorcyclizine, 25 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_2400: ConversionFactors.LookupConversionFactor(chlorpheniramine, 0.5 'mg', "Chewable Tablet") is null
define TestLookupUCMConversionFactor_2670: ConversionFactors.LookupConversionFactor(codeine, 12.5 'mg', "Oral Tablet") = 0.15
define TestLookupUCMConversionFactor_3423: ConversionFactors.LookupConversionFactor(hydromorphone, 1 'mg', "Oral Tablet") = 4
define TestLookupUCMConversionFactor_3423_PrefilledSyringe: ConversionFactors.LookupConversionFactor(hydromorphone, 0.5 'mL', "Prefilled Syringe") = 20
define TestLookupUCMConversionFactor_3498: ConversionFactors.LookupConversionFactor(diphenhydramine, 18.75 'mg', "Oral Capsule") is null
define TestLookupUCMConversionFactor_4337: ConversionFactors.LookupConversionFactor(fentanyl, 0.1 'mg', "Buccal Tablet") = 130
define TestLookupUCMConversionFactor_4337_TransdermalSystem: ConversionFactors.LookupConversionFactor(fentanyl, 0.012 'mg/h', "Transdermal System") = 7200
define TestLookupUCMConversionFactor_4337_NasalSpray: ConversionFactors.LookupConversionFactor(fentanyl, 0.1 'mg/{actuat}', "Mucosal Spray") = 160
define TestLookupUCMConversionFactor_4337_BuccalFilm: ConversionFactors.LookupConversionFactor(fentanyl, 1.2 'mg', "Buccal Film") = 180
define TestLookupUCMConversionFactor_4337_Injection: ConversionFactors.LookupConversionFactor(fentanyl, 1.2 'mg', "Injection") = 300
define TestLookupUCMConversionFactor_5032: ConversionFactors.LookupConversionFactor(guaifenesin, 100 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_5489: ConversionFactors.LookupConversionFactor(hydrocodone, 10 'mg', "Oral Tablet") = 1
define TestLookupUCMConversionFactor_5640: ConversionFactors.LookupConversionFactor(ibuprofen, 100 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_6102: ConversionFactors.LookupConversionFactor(kaolin, 0.145 'mg/mg', "Topical Ointment") is null
define TestLookupUCMConversionFactor_6378: ConversionFactors.LookupConversionFactor(levorphanol, 2 'mg', "Oral Tablet") = 11
define TestLookupUCMConversionFactor_6754: ConversionFactors.LookupConversionFactor(meperidine, 100 'mg', "Oral Tablet") = 0.1
define TestLookupUCMConversionFactor_6813: ConversionFactors.LookupConversionFactor(methadone, 10 'mg', "Oral Tablet") = 4
define TestLookupUCMConversionFactor_6813_30: ConversionFactors.LookupConversionFactor(methadone, 30 'mg', "Oral Tablet") = 8
define TestLookupUCMConversionFactor_6813_50: ConversionFactors.LookupConversionFactor(methadone, 50 'mg', "Oral Tablet") = 10
define TestLookupUCMConversionFactor_6813_70: ConversionFactors.LookupConversionFactor(methadone, 70 'mg', "Oral Tablet") = 12
define TestLookupUCMConversionFactor_7052: ConversionFactors.LookupConversionFactor(morphine, 10 'mg', "Oral Tablet") = 1
define TestLookupUCMConversionFactor_7242: ConversionFactors.LookupConversionFactor(naloxone, 0.7 'mg', "Buccal Film") is null
define TestLookupUCMConversionFactor_7243: ConversionFactors.LookupConversionFactor(naltrexone, 100 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_7804: ConversionFactors.LookupConversionFactor(oxycodone, 36 'mg', "Extended Release Oral Capsule") = 1.5
define TestLookupUCMConversionFactor_7814: ConversionFactors.LookupConversionFactor(oxymorphone, 10 'mg', "Oral Tablet") = 3
define TestLookupUCMConversionFactor_8001: ConversionFactors.LookupConversionFactor(pentazocine, 50 'mg', "Oral Tablet") = 0.37
define TestLookupUCMConversionFactor_8163: ConversionFactors.LookupConversionFactor(phenylephrine, 10 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_8175: ConversionFactors.LookupConversionFactor(phenylpropanolamine, 18 'mg', "Extended Release Oral Tablet") is null
define TestLookupUCMConversionFactor_8745: ConversionFactors.LookupConversionFactor(promethazine, 10 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_8896: ConversionFactors.LookupConversionFactor(pseudoephedrine, 45 'mg', "Oral Capsule") is null
define TestLookupUCMConversionFactor_9009: ConversionFactors.LookupConversionFactor(pyrilamine, 10 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_10689: ConversionFactors.LookupConversionFactor(tramadol, 100 'mg', "Oral Tablet") = 0.1
define TestLookupUCMConversionFactor_10849: ConversionFactors.LookupConversionFactor(triprolidine, 2.5 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_19759: ConversionFactors.LookupConversionFactor(bromodiphenhydramine, 2.5 'mg/mL', "Oral Solution") is null
define TestLookupUCMConversionFactor_19860: ConversionFactors.LookupConversionFactor(butalbital, 50 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_22696: ConversionFactors.LookupConversionFactor(dexbrompheniramine, 1 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_22697: ConversionFactors.LookupConversionFactor(dexchlorpheniramine, 2 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_23088: ConversionFactors.LookupConversionFactor(dihydrocodeine, 16 'mg', "Oral Tablet") = 0.25
define TestLookupUCMConversionFactor_27084: ConversionFactors.LookupConversionFactor(homatropine, 5 'mg', "Oral Tablet") is null
define TestLookupUCMConversionFactor_35780: ConversionFactors.LookupConversionFactor(ropivacaine, 10 'mg/mL', "Injection") is null
define TestLookupUCMConversionFactor_237005: ConversionFactors.LookupConversionFactor(levomethadyl, 10 'mg/mL', "Oral Solution") = 8
define TestLookupUCMConversionFactor_636827: ConversionFactors.LookupConversionFactor(guaiacolsulfonate, 70 'mg/mL', "Oral Solution") is null
define TestLookupUCMConversionFactor_787390: ConversionFactors.LookupConversionFactor(tapentadol, 50 'mg', "Oral Tablet") = 0.4
define TestLookupUCMConversionFactor_Message: ConversionFactors.LookupConversionFactor(null, 10 'mg', null) is null
