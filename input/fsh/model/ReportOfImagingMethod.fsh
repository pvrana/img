Logical: ReportOfImagingMethodCz
Id: ReportOfImagingMethod
Title: "A.2.4 - Report of imaging method"
Description: """Imaging Report - Imaging Report report of imaging method - A.2.4"""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* reportOfImagingMethod 1..1 BackboneElement "A.2.4 - Report of imaging method" """Report of imaging method"""
* typeOfModality 0..* CodeableConcept "A.2.4.1 - Modality type" """The type of modality that was used.
- Preferred system(s): DICOM [ModalityCodelist]"""
* typeOfImagingMethod 1..* CodeableConcept "A.2.4.2 - Type of imaging method" """Display method type.
- Preferred system(s): Valueset ČRK (ERTN) 
- Preferred system(s): LOINC Imaging Document Codes"""
* reason 0..* BackboneElement "A.2.4.3 - Reason (indication)" """Reason (indication)"""
* reason.description 0..1 string "A.2.4.3.1 - Description of the reason" """Description of the clinical condition, stating the reason why the imaging method was ordered (indicated). Example: \"Cough lasting 3 months\"."""
* reason.classification 0..* CodeableConcept "A.2.4.3.2 - Classification of reason" """Reason code for performing the display method.
- Preferred system(s): SNOMED CT [ReasonCodelist]"""
* clinicalQuestion 0..* string "A.2.4.4 - A clinical question" """The clinical question that the imaging method is intended to answer. Example: 'Suspected lung tumor.'"""
* partOfBody 0..* BackboneElement "A.2.4.5 - Body part" """The body part that is the subject of an examination or procedure. At least one of the Body Part Code or Description elements must be present."""
* partOfBody.code 0..1 CodeableConcept "A.2.4.5.1 - Body part code" """Body part classification code, location on/in the body.
- Preferred system(s): SNOMED CT [BodyLacation|LocationICT-O-3]"""
* partOfBody.laterality 0..1 CodeableConcept "A.2.4.5.2 - Laterality of body part" """Sideness, if meaningful. (Location on the side of the body, if needed to distinguish from a similar location on the other side of the body. If laterality is present, body location must also be present.)
- Preferred system(s): SNOMED CT [Laterality Codelists]"""
* partOfBody.description 0..1 string "A.2.4.5.3 - Body part description" """Human-readable description of the location on the body."""
* procedure 0..* BackboneElement "A.2.4.6 - Performance (procedure)" """Description of the procedure expressed by code and/or text description. (E.g. used MR sequences, image projection...)"""
* procedure.reason 0..* string "A.2.4.6.1 - Reason for performance" """The reason for performing the procedure in a formalized or textual description."""
* procedure.start 0..1 dateTime "A.2.4.6.2 - Start of the procedure" """(Required) start date (and possibly start time) of the performance. It is permitted to provide a 'vague' date, e.g. only a year."""
* procedure.end 0..1 dateTime "A.2.4.6.3 - End of the procedure" """The end date (and possibly the end time) of the service. It is allowed to specify an 'indefinite' date, e.g. only a year. The end date element is used only for services that last a certain time and then are always used. If the service is still ongoing, the value is left blank. For immediate or very short-term services, the element is omitted."""
* procedure.performedBy 0..* HumanName "A.2.4.6.4 - Performed by" """The healthcare professional and/or provider who performed the procedure."""
* procedure.recordedBy 0..1 HumanName "A.2.4.6.5 - Recorded by" """The healthcare professional who created the performance record and is responsible for its content."""
* procedure.place 0..1 string "A.2.4.6.6 - Place of performance" """Place (organization) where the procedure was performed. Only stated if different from the facility performing the imaging examination."""
* procedure.anatomicalFocus 0..1 BackboneElement "A.2.4.6.7 - Anatomical focus of performance" """The anatomical site where the procedure is targeted. Must contain at least one of the elements, either a code and/or a human-readable description of the site on/in the body."""
* procedure.anatomicalFocus.code 0..1 CodeableConcept "A.2.4.6.7.1 - Body location code" """The place on/in the body where the performance is focused.
- Preferred system(s): SNOMED CT < 123037004 |Body structure 
- Preferred system(s): ICD-O-3 International Classification of Diseases for Oncology, version 3 (Topography codes)"""
* procedure.anatomicalFocus.laterality 0..1 CodeableConcept "A.2.4.6.7.2 - Laterality of the body location" """The location on the side of the body, if it is necessary to distinguish it from a similar location on the other side of the body. If laterality is present, the location of the location on/in the body must also be present.
- Preferred system(s): SNOMED CT [Laterality Codelists]"""
* procedure.anatomicalFocus.description 0..1 string "A.2.4.6.7.3 - Description of the location on/in the body" """A human-readable description of the location on/in the body where the performance is targeted."""
* procedure.complication 0..* BackboneElement "A.2.4.6.8 - Complications during the procedure" """Any complications that occurred during or immediately after the procedure. These are usually tracked separately from the notes, which usually describe the procedure itself, not 'post-procedure' problems."""
* procedure.complication.code 0..* CodeableConcept "A.2.4.6.8.1 - Complications formalized" """Indicating complications during or immediately after the procedure using a coding system.
- Preferred system(s): SNOMED CT"""
* procedure.complication.description 0..1 string "A.2.4.6.8.2 - Description of complications" """Textual (narrative) description of complications during or immediately after the procedure."""
* procedure.comment 0..* BackboneElement "A.2.4.6.9 - Comment on the performance (procedure)" """Notes and comments on the performance (procedure)."""
* procedure.comment.author 0..1 string "A.2.4.6.9.1 - Author of the comment" """Author of the comment."""
* procedure.comment.text 1..* string "A.2.4.6.9.2 - Text of the comment" """Plain or formatted text content of the comment."""
* procedure.comment.dateTime 0..1 dateTime "A.2.4.6.9.3 - Date and time of the comment" """When the comment was written. This element must be included if the information cannot be inferred from the context (e.g. from visit information, etc.)."""
* procedure.usedMedicalDevice 0..* BackboneElement "A.2.4.6.10 - Used medical device" """A medical device used during a procedure."""
* procedure.usedMedicalDevice.name 0..1 string "A.2.4.6.10.1 - Name of medical device" """The brand name of the device or software."""
* procedure.usedMedicalDevice.model 0..1 string "A.2.4.6.10.2 - Medical device model" """Device model or software version."""
* procedure.usedMedicalDevice.identifier 0..* Identifier "A.2.4.6.10.3 - Medical device ID" """Unique identifiers assigned to a device by the manufacturer, other organization, or owner, such as a serial number. A commonly used coding system is the GTIN."""
* procedure.usedMedicalDevice.type 0..1 CodeableConcept "A.2.4.6.10.4 - Type of medical device" """Product type code.
- Preferred system(s): SNOMED CT 
- Preferred system(s): EMDN"""
* procedure.usedMedicalDevice.description 0..1 string "A.2.4.6.10.5 - Description of the medical device" """Additional text description/specification of the device."""
* procedure.usedMedicalDevice.manufacturer 0..1 string "A.2.4.6.10.6 - Manufacturer of medical device" """The name of the device or software manufacturer."""
* procedure.usedMedicalDevice.UDI 0..1 Identifier "A.2.4.6.10.7 - UDI of the medical device" """UDI of the medical device placed on the label or packaging of the device."""
* procedure.category 0..* CodeableConcept "A.2.4.6.11 - Performance category (procedures)" """The method or technique that was used to perform the procedure, e.g., access, irrigation, pressure, etc.
- Preferred system(s): SNOMED CT [ProcedureCategoryCodelist]"""
* procedure.code 1..1 CodeableConcept "A.2.4.6.12 - Performance (procedure)" """Code, or possibly name of the procedure.
- Preferred system(s): SNOMED CT [ProcedureCodelist]"""
* procedure.achievement 0..1 CodeableConcept "A.2.4.6.13 - Achieving a result" """Were the reasons why the procedure was performed resolved? 'Not resolved' … 'successful', 'unsuccessful', 'partially successful'.
- Preferred system(s): SNOMED CT"""
* procedure.illnessCode 0..* CodeableConcept "A.2.4.6.14 - Illness - reason for the procedure" """A detailed description or reference to information about the patient's health condition/health problem that is the reason for performing the procedure.
- Preferred system(s): MKN-10 
- Preferred system(s): Orphacode"""
* procedure.relatedDevice 0..* string "A.2.4.6.15 - Resource related" """A medical device that is implanted, removed, or otherwise manipulated (calibration, battery replacement, prosthesis insertion, wound suction application, etc.) as a core part of a procedure."""