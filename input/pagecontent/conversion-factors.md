The Morphine Milligram Equivalent (MME) calculator provides for configurable
conversion factors, allowing the same calculator logic to be used in different
settings and for different purposes. These conversion factors are configurable
using a CodeSystem supplement. This implementation guide contains one conversion
factor table:

* [CDCMMEClinicalConversionFactors](CodeSystem-CDCMMEClinicalConversionFactors.html)

The Clinical Conversion Factors table uses values from CDC guidance here:
https://www.cdc.gov/drugoverdose/pdf/calculating_total_daily_dose-a.pdf

The CodeSystem supplements are configured with 3 types of properties:

* `conversion-factor`: Defines the conversion factor for a specific ingredient,
when the conversion factor is the same for all dose forms and dose amounts for
the ingredient. The value of this property will be the decimal representation of
the conversion factor.
* `dose-form-conversion-factor`: Defines the conversion factor for an ingredient when the conversion factor varies by the dose form of the medication. The value of this property will be a string of the form `<dose-form-code>:<conversion-factor>[@<doses-per-day>]`, e.g. 970789:130, where '970789' is the RxNorm dose form code, and '130' is the decimal representation of the conversion factor. An example of a per-day conversion factor is fentanyl, 316987:7200@0.33333333, where 316987 is RxNorm dose form code, 7200 is the conversion factor, and 0.33333333 is the dosesPerDay, expressed as a decimal with a maximum of 8 digits after the decimal.
* `dose-range-conversion-factor`: Defines the conversion factor for an ingredient
when the conversion factor varies by the overall dose of the medication. The
value of this property will be a string of the form `<low-value>-<high-value>:<conversion-factor>`,
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

### Usage

The MME calculator looks up conversion factor configuration by:

1. Looking for a CodeSystem that is a supplement to RxNorm and has a name matching the `ConversionFactorSupplementName` parameter defined in the `ConversionFactors` CQL library.
2. Looking for a CodeSystem that is a supplement to RxNorm and has a [`task` usage context](http://hl7.org/fhir/codesystem-usage-context-type.html) of `mme-calculation`, as defined in the CDC MME Usage Context Codes code system published in this implementation guide.
3. Using the hard-coded conversion factors returned by the `GetConversionFactor` function, which are the same as the clinical conversion factors, including conversion factors for methadone (on a sliding scale by dose quantity) and transdermal fentanyl (given as a daily factor, specified with a standard patch duration of 3 days).

Systems that only need to support one set of conversion factors can be configured with only the appropriate code system supplement, and don't need to provide the `ConversionFactorSupplementName` parameter as part of execution. However, systems that support run-time selection of conversion factors (i.e. a service) need all available code system supplements and can use the `ConversionFactorSupplementName` parameter to distinguish which conversion factor set to use.

### Cautions

> **Caution**: The conversion factors supplied with this content are provided by the CDC as part of the Opioid Prescribing Guideline. Configuring the calculator to use conversion factors other than those provided here should be done with extreme caution and under the direction of appropriate clinical expertise.

> **Caution**: Buprenorphine, as a partial opioid agonist, is not associated with overdose in the same dose-dependent manner as observed with medications that are full opioid agonists, and is not/should not be included in the calculator

> **Caution**: Equianalgesic dose conversions are only estimates and cannot account for individual variability in genetics and pharmacokinetics.
