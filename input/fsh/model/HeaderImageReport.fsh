Logical: HeaderImagingReportCz
Id: HeaderImagingReport
Title: "A.1 - Imaging Report header data element"
Description: """Imaging Report - Imaging Report header data element - A.1"""

* insert SetFmmandStatusRule ( 1, draft )

* subject 1..1 SubjectCz "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject" """Identification of the patient/subject and Patient/subject related contact information"""
* payer 0..1 BackboneElement "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care." """Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* payer.insuranceCode 0..1 Identifier "A.1.3.1 - Health insurance code" """Unique health insurance company identification code."""
* payer.insuranceName 0..1 string "A.1.3.2 - Health insurance name" """Full, official name of the healthcare insurance provider."""
* payer.insuranceNumber 0..1 Identifier "A.1.3.3 - Health insurance number" """Number or code under which the insured person is registered at the insurance provider."""
* informationRecipient 0..* BackboneElement "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable" """Information recipient - (intended recipient or recipients of the report), if applicable"""
* informationRecipient.identifier 0..1 Identifier "A.1.4.1 - Recipient identifier" """The health professional or patient identifier. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier could be used."""
* informationRecipient.name 0..1 HumanName "A.1.4.2 - Recipient name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* informationRecipient.organizationID 0..* Identifier "A.1.4.3 - Recipient organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* informationRecipient.organization 0..1 BackboneElement "A.1.4.4 - Recipient organisation" """The healthcare provider organisation information."""
* informationRecipient.address 0..1 Address "A.1.4.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* informationRecipient.country 1..1 CodeableConcept "A.1.4.6 - Country" """Country of the intended recipient as part of the address."""
* informationRecipient.telecom 0..* ContactPoint "A.1.4.7 - Telecom" """Telecommunication contact information (addresses) associated to a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* author 1..* BackboneElement "A.1.5 - Author (by whom the Imaging report was/were authored). Multiple authors could be provided." """Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."""
* author.identifier 1..* Identifier "A.1.5.1 - Author identifier" """The health professional identifier that will allow addressing recipients within a national or international data exchange infrastructure, such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""
* author.name 1..1 HumanName "A.1.5.2 - Author name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* author.organizationID 0..* Identifier "A.1.5.3 - Author organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* author.organization 1..1 BackboneElement "A.1.5.4 - Author organisation" """The healthcare provider organisation information."""
* author.dateTime 1..1 dateTime "A.1.5.5 - Date Time" """Date and time of the last modification of the document by its Author."""
* attester 0..* BackboneElement "A.1.6 - Attester (multiple attesters could be provided)" """Attester (multiple attesters could be provided)"""
* attester.identifier 1..* Identifier "A.1.6.1 - Attester identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number."""
* attester.name 1..1 HumanName "A.1.6.2 - Attester name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* attester.organizationID 0..* Identifier "A.1.6.3 - Attester organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* attester.organization 1..1 BackboneElement "A.1.6.4 - Attester organisation" """The healthcare provider organisation information."""
* attester.dateTime 1..1 dateTime "A.1.6.5 - Approval date and time" """Date and time of the approval of the document by Attester."""
* legalAuthenticator 0..1 BackboneElement "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)" """Legal authenticator (The person taking responsibility for the medical content of the document)"""
* legalAuthenticator.identifier 1..* Identifier "A.1.7.1 - Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. Multiple identifiers could be provided."""
* legalAuthenticator.name 1..1 HumanName "A.1.7.2 - Legal authenticator name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* legalAuthenticator.organizationID 0..* Identifier "A.1.7.3 - Legal authenticator organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* legalAuthenticator.organization 1..1 BackboneElement "A.1.7.4 - Legal authenticator organisation" """The healthcare provider organisation information."""
* legalAuthenticator.dateTime 1..1 dateTime "A.1.7.5 - Authentication date and time" """Date and time when the document was authorised."""
* documentMetadata 1..1 BackboneElement "A.1.8 - Document metadata" """Document metadata"""
* documentMetadata.identifier 1..1 Identifier "A.1.8.1 - Document ID" """Unique identifier of the document"""
* documentMetadata.type 1..1 CodeableConcept "A.1.8.2 - Document type" """Identifies the type of document at hand, e.g. Imaging report."""
* documentMetadata.status 1..1 CodeableConcept "A.1.8.3 - Document status" """The status of the Imaging report. E.g., preliminary, final."""
* documentMetadata.dateTime 1..1 dateTime "A.1.8.4 - Report date and time" """Date and time of the Imaging report creation."""
* documentMetadata.title 1..1 string "A.1.8.5 - Document title" """Document title of the Imaging report."""
* documentMetadata.custodian 1..1 BackboneElement "A.1.8.6 - Report custodian" """Organisation that is in charge of maintaining the report [this element will include organisation ID, name, address etc., as other elements describing organisations]."""
* documentMetadata.confidentiality 1..1 CodeableConcept "A.1.8.7 - Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
* documentMetadata.language 1..1 CodeableConcept "A.1.8.8 - Language" """Language in which the document is written. Language is expressed by the ISO language code."""
* documentMetadata.version 0..1 string "A.1.8.9 - Version" """Version of the document"""