Profile: CZ_ObservationResultImaging
Parent: Observation
Id: cz-observation-result-imaging
Title: "Observation: Imaging Report (CZ)"
Description: """This profile constrains the Observation resource to represent results produced by imaging report or panels/studies.

This observation may represent the result of a imaging report
"""

* insert SetFmmandStatusRule ( 0, draft )

* ^jurisdiction = $iso3166#CZ
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^purpose = "This profile constrains the Observation resource to represent a imaging report."
* . ^short = "Imaging result for a imaging report"
* . ^definition = "This observation may represent the result of a imaging report."
* . ^comment = "Represents either a imaging observation or the group of observations produced by a imaging study."



//* text.status = #empty
//* obeys cz-lab-2
* language MS
* identifier MS
//* basedOn ^mustSupport = false
* partOf ^mustSupport = false
* status MS

//* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"imaging\"."
//* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
// (LN) * category only CZ_CodeableConcept
//* category ^slicing.discriminator.type = #pattern
//* category ^slicing.discriminator.path = "$this"
//* category ^slicing.rules = #open
//* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
//* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
// (LN) * category contains laboratory 1..1 MS
// (LN) * category[laboratory] only CZ_CodeableConcept
// (LN) * category[laboratory] = $observation-category#laboratory

/*
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open

* category.coding contains
//    loinc-observation 1..1 MS and
    observation-category 1..1 MS
//* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
*/

//* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nThe implementer SHALL adhere to the preferred codes to use.\r\nThe recommended codification used is NCLP. It is allowed to use multiple codes within the FHIR CodeableConcept datatype. But the first code given must follow the following rules.(Other codes given will be for information purposes.)\r\n\r\nThe actual observation is preferably coded in NCLP \r\n\r\nIf that is not possible, laboratory may send its own local code plus obligatory a text element to further explain. \r\n\r\nIf that is not possible the kind of observation is expressed only in text (allowed but NOT RECOMMENDED)"
//* code from CZ_NclpLabpolVS (preferred)

* subject ^short = "In the initial iteration of the Czech interoperability project: this is Patient (CZ)."

//* effective[x] obeys cz-lab-1 // efective datetime musí být uveden s přesností alespoň na den
//* effective[x].extension ^slicing.discriminator.type = #value
//* effective[x].extension ^slicing.discriminator.path = "url"
//* effective[x].extension ^slicing.rules = #open
//* effective[x].extension contains CZ_LabClinicallyRelevantTime named ClinicallyRelevantTime 0..1 MS
//----------


* issued MS

// TODO: add standard extension for different performer roles to support all roles in current DASTA standard
* performer only Reference(CareTeam or RelatedPerson or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)
* performer MS
* performer ^short = "In the initial iteration of the Czech interoperability project: this is Organization (CZ) or Practitioner (CZ)"
* value[x] MS
* dataAbsentReason MS
* interpretation MS

* note MS
//* note only CZ_CodedAnnotation

//* bodySite MS  // MS flag is releavant for lab observation or not?

* method MS  // doplnit binding na xeh-metod-VS - prodiskutovat s Mirkem

* specimen only Reference(CZ_Specimen)
* specimen MS
//* device ^mustSupport = false
* device MS
* device only Reference(CZ_DeviceObserver or  DeviceMetric)
* referenceRange MS
//* referenceRange.extension contains CZ_ReferenceRangeComment named Comment 0..*

//* hasMember only Reference(QuestionnaireResponse or MolecularSequence or CZ_ObservationResultLaboratory)
//* hasMember MS
//* hasMember ^short = "In the initial iteration of the Czech interoperability project: this is ObservationLaboratory (CZ)"

* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or MolecularSequence or CZ_ObservationResultImaging)
* derivedFrom MS
* derivedFrom ^short = "In the initial iteration of the Czech interoperability project: this can be Observation (CZ) or Media"
