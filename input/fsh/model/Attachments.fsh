Logical: AttachmentsCz
Id: Attachments
Title: "A.2.6 - Media (attachments)"
Description: """Imaging Report - Imaging Report media (attachments) - A.2.6 \r\nKey images related to this report."""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* created 0..1 dateTime "A.2.6.1 - Date and time of creation" """Date and time of creation or the period during which the media was created."""
* issued 0..1 dateTime "A.2.6.2 - Date and time of issuance" """Date and time when this resource was made available."""
* author 0..1 BackboneElement "A.2.6.3 - Created by" """Person who created the image."""
* author.identifier 1..* Identifier "A.2.6.3.1 - Author identifier" """The health professional identifier that will allow addressing recipients within a national or international data exchange infrastructure, such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""
* author.name 1..1 HumanName "A.2.6.3.2 - Author name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* author.organizationID 0..* Identifier "A.2.6.3.3 - Author organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* author.organization 1..1 BackboneElement "A.2.6.3.4 - Author organisation" """The healthcare provider organisation information."""
* author.dateTime 1..1 dateTime "A.2.6.3.5 - Date Time" """Date and time of the last modification of the document by its Author."""
* bodyPart 0..1 CodeableConcept "A.2.6.4 - Body part" """Observed body part."""
* mediaHeight 0..1 integer "A.2.6.5 - Media height" """Image height in pixels (photo/video)."""
* mediaWidth 0..1 integer "A.2.6.6 - Media width" """Image width in pixels (photo/video)."""
* mediaFrames 0..1 integer "A.2.6.7 - Media frames" """Number of frames in a photo, video, or PDF."""
* recordingDuration 0..1 dateTime "A.2.6.8 - Recording duration" """Duration of the recording in seconds - for audio and video."""
* attachment 1..1 Attachment "A.2.6.9 - Attachment" """Directly embedded data or a link to the attachment's data source."""
* note 0..1 string "A.2.6.10 - Note" """Contains free text, its author, and the date and time of its creation."""
* view 0..1 CodeableConcept "A.2.6.11 - View" """Projection name, e.g., lateral or anteroposterior (AP). - Preferred system(s): SNOMED CT [ViewProjectionCodelist]"""
* modality 0..1 CodeableConcept "A.2.6.12 - Modality" """Type of acquisition device/process. - Preferred system(s): DICOM [AcquisitionModalityCodelist]"""
* device 0..1 CodeableConcept "A.2.6.13 - Device" """Device used to collect the media."""
* mediaType 0..1 CodeableConcept "A.2.6.14 - Media type" """Classification of the media, e.g., image, video, or audio. - Preferred system(s): http://terminology.hl7.org/CodeSystem/media-category ValueList: image | video | audio"""