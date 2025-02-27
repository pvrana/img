Profile: CZ_ServiceRequest
Parent: ServiceRequest
Id: cz-service-request
Title: "ServiceRequest: Imaging order"
Description: "ServiceRequest used to represent a Imaging Order for the scope of the Czech national interoperability project."

// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Imaging Order"
* . ^definition = "Imaging Order composition."

* insert SetFmmandStatusRule ( 0, draft )


// add binding for category and code
* identifier 1..
* category 1..
* code 1..
* subject 1..
* subject only Reference(CZ_PatientCore or Patient or Group or Location or Device or CZ_MedicalDevice)
* requisition ^short = "Composite Request ID."
* specimen	only Reference(CZ_Specimen)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?
* insurance only Reference(Coverage)