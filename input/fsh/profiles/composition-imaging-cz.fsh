//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_CompositionImaging
Parent: Composition
Id: cz-composition-imaging
//Id: composition-cz-imaging
Title: "Composition (Imaging Report CZ)"
Description: "This profile defines how to represent Composition resource in HL7 FHIR for the scope of this guide."
//-------------------------------------------------------------------------------------------

// this statement says that this profile conforms with the eu lab one
* insert ImposeProfile($CompositionEuImagingReport,0)

* . ^short = "Imaging Report composition"
* . ^definition = "Imaging Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference ( Resource or ServiceRequest ) /// add profile

* extension contains $artifact-relatedArtifact named relatedArtifact 0..*
* extension[relatedArtifact] 
  * ^short = "Related artefacts: e.g. presented form"
* extension[relatedArtifact].valueRelatedArtifact.type 
  * ^example[0].label = "presented form"
  * ^example[0].valueCodeableConcept  = http://hl7.org/fhir/related-artifact-type#documentation
  // ItT seems not appropriate as code... to be changed if this solution is used
* extension[relatedArtifact].valueRelatedArtifact.document  

* extension contains $composition.version-r5 named compositionVersionR5 0..
* extension[compositionVersionR5].valueString ^short = "Business version"

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient]
* extension[information-recipient].valueReference only Reference( CZ_PractitionerRoleCore or CZ_PractitionerCore or CZ_MedicalDevice or CZ_PatientCore or RelatedPerson or CZ_OrganizationCore)

* identifier ^short = "Imaging Report business identifier"
* status ^short = "Imaging Report status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Imaging Report\")"
* type ^definition = "Specifies that this composition refer to a Imaging Report"
* type = $loinc#81220-6 "Diagnostic imaging report - recommended C-CDA R2.0 and R2.1 sections"
* subject only Reference(CZ_PatientCore)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."

/* TO DO
- fill in the contents
*/