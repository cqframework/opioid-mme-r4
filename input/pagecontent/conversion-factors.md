The Morphine Milligram Equivalent (MME) calculator provides for configurable
conversion factors, allowing the same calculator logic to be used in different
settings and for different purposes. These conversion factors are configurable
using a CodeSystem supplement. This implementation guide contains two conversion
factor tables:

* CDCMMEClinicalConversionFactors
* CDCMMEResearchConversionFactors

The Clinical Conversion Factors table uses values from CDC guidance here:
https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf

The Research Conversion Factors table uses values from CDC information here:
https://www.cdc.gov/drugoverdose/modules/data-files.html

The CodeSystem supplements are configured with 3 types of properties:

* `conversion-factor`: Defines the conversion factor for a specific ingredient,
when the conversion factor is the same for all dose forms and dose amounts for
the ingredient. The value of this property will be the decimal representation of
the conversion factor.
* `dose-form-conversion-factor`: Defines the conversion factor for an ingredient
when the conversion factor varies by the dose form of the medication. The value
of this property will be a string of the form <dose-form-code>:<conversion-factor>,
e.g. 970789:130, where '970789' is the RxNorm dose form code, and '130' is the
decimal representation of the conversion factor.
* `dose-range-conversion-factor`: Defines the conversion factor for an ingredient
when the conversion factor varies by the overall dose of the medication. The
value of this property will be a string of the form <low-value>-<high-value>:<conversion-factor>,
e.g. 1-20:4. Note that the low-value or high-value may be a wildcard '*' to
indicate the range continues (e.g. '61-*:12' indicates the range is 61 or greater).

For a given ingredient, only one of 'dose-form' or 'dose-range' will be present,
with or without an ingredient-specific conversion factor. The properties together
will enable a unique conversion factor to be determined if the input is within
the expected range. If the input is outside the expected range, and there is no
ingredient-specific conversion-factor specified, implementations should indicate
a conversion factor could not be determined from the supplied information.

All conversion factors supplied in these supplements are in 'mg/d'. When the
published references use other units, appropriate conversions have been applied
to provide the conversion factor in consistent units to the calculator.
