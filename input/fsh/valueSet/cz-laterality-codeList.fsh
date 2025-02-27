ValueSet: CZ_LateralityCodelist
Id: cz-laterality-codeList
Title: "Laterality Codelist (CZ)"
Description: "Laterality Codelist"

* insert SetFmmandStatusRule ( 0, draft )

* ^jurisdiction = $iso3166#CZ
* ^language = #cs-CZ
* ^identifier.system = "2.16.840.1.113883.6.96"
// add value * ^identifier.value = "urn:oid:1.2.203.24341.11.1.1"
* ^version = "0.1.0"
//* ^status = #draft
//* ^date = "2022-08-11"

* $sct#7771000 "Levá"
* $sct#24028007 "Pravá"
* $sct#51440002 "Bilaterální"
