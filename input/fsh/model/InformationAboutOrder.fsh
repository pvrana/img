Logical: InformationAboutOrderCz
Id: InformationAboutOrder
Title: "A.2.1 - Information about the order"
Description: """Imaging Report - Imaging Report information about the order - A.2.1"""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* identifierOrder 0..1 Identifier "A.2.1.1 - Identifier of request (order)" """Identifier of the health service request (order)."""
* orderDateTime 0..1 dateTime "A.2.1.2 - Date and time of request" """Date and time of entering (issuing) the request (order) for health services."""
* applicantIdentifier 0..1 Identifier "A.2.1.3 - Identification of the applicant (person)" """The identification number of the healthcare professional issuing the request (order), e.g. the doctor who indicated the examination."""
* applicantName 0..1 HumanName "A.2.1.4 - Name of the applicant (person)" """Name of the applicant/client (person)."""
* applicantAddress 0..1 Address "A.2.1.5 - Applicant contact details - address" """Contact details of the applicant/client (address)."""
* applicantOrganization 0..1 BackboneElement "A.2.1.6 - Applicant (client) organization" """The organization (healthcare provider) on whose behalf the applicant issued the request."""
