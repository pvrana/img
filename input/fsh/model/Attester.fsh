Logical: AttesterReportCz
Id: AttesterCz
Title: "A.1.6 - Attester (multiple attesters could be provided)"
Description: """Attester (multiple attesters could be provided)"""

* insert SetFmmandStatusRule ( 1, draft )

* identifier 1..* Identifier "A.1.6.1 - Attester identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number."""
* name 1..1 HumanName "A.1.6.2 - Attester name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* organizationID 0..* Identifier "A.1.6.3 - Attester organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* organization 1..1 BackboneElement "A.1.6.4 - Attester organisation" """The healthcare provider organisation information."""
* dateTime 1..1 dateTime "A.1.6.5 - Approval date and time" """Date and time of the approval of the document by Attester."""
