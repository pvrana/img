//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_CompositionImagingReport
Parent: Composition
Id: cz-composition-imaging
//Id: composition-cz-imaging
Title: "Composition: Imaging Report (CZ)"
Description: "This profile defines how to represent Composition resource in HL7 FHIR for the scope of this guide."
* . ^short = "Imaging Report composition"
* . ^definition = """
Imaging Study Report composition.\n
A composition is a set of healthcare-related information that is assembled together into a single logical document that 
provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard 
to who is making the statement.\n
While a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, 
of which the Composition is the first resource contained.\n
\n
The `text` field of each section SHALL contain a textual representation of all listed entries.
"""
* ^language = #cs
* insert SetFmmandStatusRule ( 0, draft )
//* insert MandateLanguageAndSecurity

//* extension contains 
//    DiagnosticReportReference named diagnosticreport-reference 1..1 MS and
//    $event-basedOn-url named basedOn 0..* and
//    $information-recipient-url named informationRecipient 0..* and
//    $artifact-version-url named artifactVersion 0..1
//* extension[diagnosticreport-reference].valueReference only Reference ( CZ_DiagnosticReport )
//* extension[basedOn].valueReference only Reference ( ServiceRequest )
// TODO see open issues - readdress the status of the information recipient.
//* extension[informationRecipient].valueReference only Reference ( ImInformationRecipient )

* meta
  * security 0..* MS

//business identifier and relation with the DiagnosticReport resource
* identifier
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Imaging Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"

* status
  * ^short = "Status of the Report"
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"

* subject 1..1 MS
* subject only Reference(Patient)

* custodian MS
* custodian only Reference(Organization)
  * ^short = "Organization that manages the Imaging Report"
//  * insert SetPopulateIfKnown

* attester 0..* MS
//  * insert SetPopulateIfKnown
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "$this.mode"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
//* attester contains legalAuthenticator 0..* MS and resultValidator 0..* MS
//* attester[legalAuthenticator]
//  * insert SetPopulateIfKnown
//  * mode 1..1 MS
//* mode = #legal
 // * party only Reference(LegalAuthenticator)
//* attester[resultValidator]
//  * insert SetPopulateIfKnown
//  * mode 1..1 MS
//  * mode = #professional
//  * party only Reference(ResultValidator)

* author 1..* MS
  * insert SliceElement( #profile, $this )
* author contains 
    author 0..* MS and 
    authoring-device 0..* MS
* author[author] only Reference(PractitionerRole)
* author[authoring-device] only Reference(Device)

// type of the report. Matching DiagnosticReport.code
// code 
//* type 1..
//* type from CZ_DiagnosticReport (preferred) // valueset to be revised. 
//  * ^short = "Type of Imaging Diagnostic Report"
//  * ^definition = "Specifies that it refers to a Imaging Report"
//  * ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"

* date MS
  * ^short = "Date the report was last changed."

* section MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* section.entry MS
* section.code 1..1 MS  // LOINC code for the section
* section.title MS
* section.text MS
* section contains 
    imagingstudy 1..1 MS and 
    order 1..1 MS and 
    history 1..1 MS and
    procedure 1..1 MS and
    comparison 1..1 MS and
    findings 1..1 MS and
    impression 1..1 MS and
    recommendation 1..1 MS and
    communication 1..1 MS

///////////////////////////////// IMAGING STUDY SECTION ///////////////////////////////////////
* section[imagingstudy]
  * ^short = "Imaging Study"
  * ^definition = "This section holds information related to the imaging studies covered by this report."
  // * title = "Imaging Studies"
  * code = $loinc#18726-0
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
    * ^slicing.ordered = false
  * entry contains imagingstudy 1..* MS
  * entry[imagingstudy]
    * ^short = "Imaging Study Reference"
    * ^definition = "This entry holds a reference to the Imaging Study instance that is associated with this Composition."
  * entry[imagingstudy] only Reference(ImagingStudy)  

///////////////////////////////// ORDER SECTION ///////////////////////////////////////
* section[order]
  * ^short = "Order"
  * ^definition = "This section holds information related to the order for the imaging study."
  * code = $loinc#55115-0 "Order"

  * entry MS
    * insert SliceElement( #profile, "$this" )
  * entry contains 
      order 0..* MS and 
      orderPlacer 0..* MS and 
      insurance 0..* MS and 
      insurranceprovider 0..* MS

  * entry[order]
    * ^short = "Order reference"
    * ^definition = "This entry holds a reference to the order for the Imaging Study and report."
  * entry[order] only Reference(ServiceRequest)  
  
  * entry[orderPlacer]
    * ^short = "Order Placer"
    * ^definition = "This entry holds a reference to order placer."
  * entry[orderPlacer] only Reference(PractitionerRole)  

  * entry[insurance]
    * ^short = "Insurrance"
    * ^definition = "This entry holds a reference to insurance."
  * entry[insurance] only Reference(Coverage)  

  * entry[insurranceprovider]
    * ^short = "Insurrance"
    * ^definition = "This entry holds a reference to insurance provider."
  * entry[insurranceprovider] only Reference(Organization)  

  
///////////////////////////////// HISTORY SECTION ///////////////////////////////////////
* section[history]
  * ^short = "History"
  * code = $loinc#11329-0 "History"

///////////////////////////////// PROCEDURE SECTION ///////////////////////////////////////
* section[procedure]
  * ^short = "Procedure"
  * code = $loinc#55111-9 "Procedure"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      procedure 0..* MS and
      practitioner 0..* MS and
      device 0..* MS and
    //  imaging-phase 0..* MS and
      medication 0..* MS
  * entry[procedure] only Reference(Procedure)
  * entry[practitioner] only Reference(Practitioner) 
  * entry[device] only Reference(Device)
//  * entry[imaging-phase] only Reference(ImagingStudyPhase)
  * entry[medication] only Reference(MedicationAdministration)

////////////////// COMPARISON SECTION //////////////////////////
* section[comparison]
  * ^short = "History"
  * code = $loinc#18834-2 "Comparison"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      comparedstudy 0..* MS
  * entry[comparedstudy] only Reference(ImagingStudy) //or ImagingSelection)

/////////////////// FINDINGS SECTION //////////////////////////
* section[findings]
  * ^short = "Findings"
  * code = $loinc#59776-5 "Findings"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      finding 0..* MS and
      keyimage 0..* MS
//  * entry[finding] only Reference(Finding)
//  * entry[keyimage] only Reference(KeyImageDocumentReference or KeyImagesSelection)

/////////////////// IMPRESSION SECTION //////////////////////////
* section[impression]
  * ^short = "Impressions"
  * code = $loinc#19005-8 "Impression"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      finding 0..* MS and
      impression 0..* MS and
      keyimage 0..* MS
//  * entry[finding] only Reference(Finding)
//  * entry[impression] only Reference(Impression)
//  * entry[keyimage] only Reference(KeyImageDocumentReference or KeyImagesSelection)

/////////////////// RECOMMENDATION SECTION //////////////////////////
* section[recommendation]
  * ^short = "Recommendations"
  * code = $loinc#18783-1 "Recommendation"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      CarePlan 0..* MS
  * entry[CarePlan] only Reference(CarePlan)


/////////////////// COMMUNICATION SECTION //////////////////////////
* section[communication]
  * ^short = "Communications"
  * code = $loinc#18783-1 "Communication"


Extension: ImDiagnosticReportReference
Id:   im-composition-diagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: """
    This extension provides a reference to the DiagnosticReport instance that is associated with this Composition.
    """
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Composition)
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference (CZ_DiagnosticReport)