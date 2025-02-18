ValueSet: CZProvisionCode
Id: cz-provision-code
Title: "CZ Provision Code"
Description: "ValueSet for provision codes in the Czech Imaging Report project, using SNOMED and Orphacode."
* ^url = "https://hl7.cz/fhir/img/ValueSet/cz-provision-code"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* ^publisher = "HL7 Czech Republic"
* ^language = #cs

* include codes from system $sct
* include codes from system $orpha