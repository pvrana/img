Logical: LegalAuthenticator
Id: LegalAuthenticatorCz
Title: "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
Description: """Legal authenticator (The person taking responsibility for the medical content of the document)"""

* insert SetFmmandStatusRule ( 1, draft )

* identifier 1..* Identifier "A.1.7.1 - Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. Multiple identifiers could be provided."""
* name 1..1 HumanName "A.1.7.2 - Legal authenticator name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* organizationID 0..* Identifier "A.1.7.3 - Legal authenticator organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* organization 1..1 BackboneElement "A.1.7.4 - Legal authenticator organisation" """The healthcare provider organisation information."""
* dateTime 1..1 dateTime "A.1.7.5 - Authentication date and time" """Date and time when the document was authorised."""

