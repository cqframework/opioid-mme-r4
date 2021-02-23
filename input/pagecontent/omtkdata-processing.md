This document describes the process for creating the OMTKData library.

### Access DB refresh

Use the process and tools described in the Opioid CDS Implementation Guide to construct
the Access DB: http://build.fhir.org/ig/cqframework/opioid-cds/service-documentation.html#solution2

### Convert the AccessDB to Sqlite:

https://www.rebasedata.com/convert-access-to-sqlite-online

This will result in a Sqlite database, but with all text fields, so change the field
type for all RXCUI fields to INTEGER

Use Sqlitebrowser (or similar ad-hoc query tool for sqlite)
http://sqlitebrowser.org

### Generate CQL:

Use the following Sqlite query to generate the CQL list selector for the OMTK Data:

```
select '{ ' || char(10) || group_concat(
    '  { drugCode: ' || T.DRUG_RXCUI || ', '
    || 'drugName: ''' || T.DRUG_NAME || ''', '
    || 'doseFormCode: ' || T.DOSE_FORM_RXCUI || ', '
    || 'doseFormName: ''' || T.DOSE_FORM_NAME || ''', '
    || 'ingredientCode: ' || T.INGREDIENT_RXCUI || ', '
    || 'ingredientName: ''' || T.INGREDIENT_NAME || ''', '
    || 'strength: ''' || T.STRENGTH || ''', '
    || 'strengthValue: ' || CAST(T.STRENGTH_VALUE as REAL) || ', '
    || 'strengthUnit: ''' || T.STRENGTH_UNIT || ''' '
    || '}', ', ' || char(10)) || char(10) || '}' as TUPLES
  from (
	select
      D.DRUG_RXCUI, D.DRUG_NAME, D.DOSE_FORM_RXCUI,
      DF.DOSE_FORM_NAME,
      I.INGREDIENT_RXCUI, I.INGREDIENT_NAME,
      SCDC.STRENGTH, SCDC.STRENGTH_VALUE, SCDC.STRENGTH_UNIT
	  from MED_DRUG D
  		join MED_DRUG_VALUE_SET MDVS
        on D.DRUG_RXCUI = MDVS.DRUG_RXCUI and MDVS.VALUE_SET_ID = 1 -- Opioids
		  join MED_SCDC_FOR_DRUG SCDCD on D.DRUG_RXCUI = SCDCD.DRUG_RXCUI
		  join MED_SCDC SCDC on SCDCD.SCDC_RXCUI = SCDC.SCDC_RXCUI
		  join MED_INGREDIENT I on SCDC.INGREDIENT_RXCUI = I.INGREDIENT_RXCUI
		  join MED_INGREDIENT_TYPE IT
        on I.INGREDIENT_RXCUI = IT.INGREDIENT_RXCUI
          and IT.INGREDIENT_TYPE = 'Opioid_NonSurgical'
  		left join MED_DOSE_FORM DF on DF.DOSE_FORM_RXCUI = D.DOSE_FORM_RXCUI
	  order by D.DRUG_RXCUI, I.INGREDIENT_RXCUI
  ) T
```

Note that during the OMTK202003 update, which was coordinated between the Opioid IG
project and measure developers building pre-rule-making Opioid-related quality measures,
several RxNorm codes were identified as inactive, non-human, or non-prescribable. These
were excluded with the following additional where clause:

```
where not exists (
  select * from RxNormCodesToRemove R where D.DRUG_RXCUI = R.Code
) -- RxNorm codes that are inactive, non prescribable, or non-human
```
