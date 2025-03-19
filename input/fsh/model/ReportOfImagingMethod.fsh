Logical: ReportOfImagingMethodCz
Id: ReportOfImagingMethod
Title: "A.2.4 - Report of imaging method"
Description: """Imaging Report - Imaging Report report of imaging method - A.2.4"""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

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
- Preferred system(s): SNOMED CT < 123037004 | Body structure 
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
* medication 0..* BackboneElement "A.2.4.7 - Medication" """Any substance administered in connection with a given procedure (typically a contrast agent, but it can also be another type of drug, e.g. a drug to reduce intestinal motility)."""
* medication.name 1..1 string "A.2.4.7.1 - Administered medicinal product" """The medication administered in connection with the examination (typically a contrast agent, but it can also be another type of medication, e.g. a medicine to reduce bowel motility). Usually these are medications. Food, blood products, devices and dressings do not strictly fall into the category of medications, but may also be recorded."""
* medication.dosage 0..1 string "A.2.4.7.2 - Dosage" """The dose of the medicinal product administered."""
* medication.routeOfAdministration 0..1 CodeableConcept "A.2.4.7.3 - The route of administration of the active substance" """The way in which the patient came into contact with the active substance or the way in which the active substance was administered.
- Preferred system(s): SNOMED CT: <284009009 | Route of administration value"""
* medication.dosingDevice 0..* string "A.2.4.7.4 - Dosing device" """A device used to administer medication to a patient. For example, a specific infusion pump."""
* medication.batchNumber 0..1 string "A.2.4.7.5 - Batch number" """Information related to the packaged products. The assigned batch number of the specified product. When this specific batch of the product will expire."""
* medication.dateTimeStart 0..1 dateTime "A.2.4.7.6 - Start date and time" """Start Date: This is the time when the administration was started."""
* medication.dateTimeEnd 0..1 dateTime "A.2.4.7.7 - End date and time" """End Date: The time the administration period ended (or was supposed to end)."""
* medication.administrator 0..1 HumanName "A.2.4.7.8 - Administrator" """The healthcare professional who administered the medication."""
* medication.reasonForSubmission 0..* string "A.2.4.7.9 - Reason for submission" """Reason for administering the medication. The patient's condition that was the reason for administering the medication or the observation that supports why the medication was administered."""
* medication.comment 0..1 string "A.2.4.7.10 - Comment" """Comments on the administration of the medicinal product."""
* medication.dateTimeOfEntry 1..1 dateTime "A.2.4.7.11 - Entry date and time" """The date on which this information about the administration of the medicinal product is entered."""
* adverseReaction 0..* BackboneElement "A.2.4.8 - Adverse reaction" """Adverse reactions related to medication or procedure."""
* adverseReaction.allergyCode 1..* CodeableConcept "A.2.4.8.1 - Allergy code" """Reactions that are a manifestation of allergy or intolerance. These are events that may occur or have occurred in the past as a reaction to the cause of the allergy or intolerance.
- Preferred system(s): SNOMED CT"""
* adverseReaction.allergyManifestation 0..1 CodeableConcept "A.2.4.8.2 - Allergy manifestation" """Severity of reaction due to medication or exposure.
- Preferred system(s): SNOMED CT 'Mírná', 'Středně těžká', 'Těžká'"""
* adverseReaction.dateTime 0..1 dateTime "A.2.4.8.3 - Alergy date and time" """The date and time the reaction occurred. It can also be just a date or a partial date if the exact date is not known."""
* adverseReaction.allergyDescription 0..1 string "A.2.4.8.4 - Alergy description" """Text description of the reaction as a whole."""
* resultOfImagingMethod 1..1 BackboneElement "A.2.4.9 - Result of the imaging method" """Section Reports from imaging methods containing narrative result and optionally formalized result using coding systems"""
* resultOfImagingMethod.narrativeText 1..1 string "A.2.4.9.1 - Narrative text" """Summary textual (narrative) description of the results of imaging methods"""
* resultOfImagingMethod.formalizedText 0..* BackboneElement "A.2.4.9.2 - Formalized text" """Formalized structured result of the imaging method"""
* resultOfImagingMethod.formalizedText.note 0..* string "A.2.4.9.2.1 - Note" """A note about the result. It should have an author and a timestamp."""
* resultOfImagingMethod.formalizedText.observationGroup 0..* string "A.2.4.9.2.2 - Observation (measurement) group" """This is a grouping mechanism. An observation can be part of a group of observations (for example, a test panel) that are ordered, performed, or reported together."""
* resultOfImagingMethod.formalizedText.observationComponent 0..* string "A.2.4.9.2.3 - Observation (measurement) component" """Some observations have multiple sub-observations. These component observations are expressed as separate pairs of value codes that share the same attributes. Examples include systolic and diastolic component observations for blood pressure measurements and multiple component observations for genetic observations."""
* resultOfImagingMethod.formalizedText.specimen 0..1 string "A.2.4.9.2.4 - Specimen" """Information about the specimen used in the observation."""
* resultOfImagingMethod.formalizedText.referenceRanges 0..1 string "A.2.4.9.2.5 - Reference ranges" """Information on the reference range relevant to the target population."""
* resultOfImagingMethod.formalizedText.reasonForAbsence 0..1 string "A.2.4.9.2.6 - The reason for the absence of a value" """The reason why the expected value of the observation is missing."""
* resultOfImagingMethod.formalizedText.observationValue 0..1 string "A.2.4.9.2.7 - Observation value (measurement)" """The resulting value of the observation. There can be different types of values, either numeric, textual, coded, or raw data may be present."""
* resultOfImagingMethod.formalizedText.interpretation 0..* string "A.2.4.9.2.8 - Interpretation of the result" """Interpretation of the result of observation (measurement)."""
* resultOfImagingMethod.formalizedText.observationMethod 0..1 string "A.2.4.9.2.9 - Observation (measurement) method" """Information about the method, principle, or mechanism of observation."""
* resultOfImagingMethod.formalizedText.derivedFrom 0..* string "A.2.4.9.2.10 - Derived from" """The source from which this observation value is derived. For example, fetal measurements based on an ultrasound image."""
* resultOfImagingMethod.formalizedText.observedBodyPart 0..1 string "A.2.4.9.2.11 - Observed body part" """Specification of the observed body part. """
* resultOfImagingMethod.formalizedText.observationStatus 0..1 string "A.2.4.9.2.12 - Observation status" """The status of the observation as final, preliminary, or changed."""
* resultOfImagingMethod.formalizedText.observationCode 1..1 CodeableConcept "A.2.4.9.2.13 - Observation code" """Coded information about the type of observation.
- Preferred system(s): SNOMED CT"""
* resultOfImagingMethod.formalizedText.observationCategory 0..* string "A.2.4.9.2.14 - Observation category" """Classification of the general category of observation, e.g. imaging, laboratory, vital signs, etc."""
* resultOfImagingMethod.formalizedText.observationEquipment 0..* string "A.2.4.9.2.15 - Observation equipment used" """The device used to make an observation and obtain a result."""
* resultOfImagingMethod.formalizedText.dateTimeObservation 0..1 dateTime "A.2.4.9.2.16 - Observation date and time" """Date and time or period of observation."""
* resultOfImagingMethod.dateTimeResult  0..1 dateTime "A.2.4.9.3 - Result release date and time" """The date and time the observation was made available, usually after verification."""
* resultOfImagingMethod.author 0..1 HumanName "A.2.4.9.4 - Result author" """The healthcare professional and/or healthcare provider organization where or by whom the observation was authorized."""
* conclusion 0..1 BackboneElement "A.2.4.10 - Conclusion" """The conclusion summarizes the most important findings and/or diagnoses that were made based on the imaging findings (and possibly other clinical information). This section may include a coded assessment, such as BI-RADS categories or equivalent."""
* conclusion.text 1..1 string "A.2.4.10.1 - Conclusion text" """Narrative text description of the clinical conclusion."""
* conclusion.code 0..1 CodeableConcept "A.2.4.10.2 - Coded conclusion" """Coded clinical findings - conditions or observations (one or the other). Commonly used staging systems (TNM, Bi-Rads, Li-Rads, etc.) can be expressed as a condition with staging (typically TNM, but also others) or as coded observations (Bi-Rads, Li-Rads, etc.).
- Preferred system(s): TNM, Bi-Rads, Li-Rads"""
* recommendation 0..1 string "A.2.4.11 - Recommendation" """This section contains recommendations for follow-up examinations or procedures that resulted from the results and/or conclusions. The structured part of this item is identical to the item of the same name in the imaging report."""
* textPartsOfDocument 0..1 BackboneElement "A.2.4.12 - Text parts of the document" """Summary text (narrative) parts of the document."""
* textPartsOfDocument.completeExaminationReport 0..1 string "A.2.4.12.1 - Complete examination report" """The complete examination report, as issued."""
* textPartsOfDocument.comments 0..1 string "A.2.4.12.2 - Comments, interpretations and recommendations" """Comments, such as textual interpretations or recommendations, that are part of the examination report."""



