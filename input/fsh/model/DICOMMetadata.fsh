Logical: DICOMMetadataCz
Id: DICOMMetadata
Title: "A.2.7 - DICOM metadata"
Description: """Imaging Report - Imaging Report DICOM metadata - A.2.7"""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* studyInstanceUID 1..1 id "A.2.7.1 - Study Instance UID - DICOM tag (0020,000D)" """A globally unique study identifier. If one or more series elements are present in the ImagingStudy, there must be one DICOM Study UID identifier."""
* studyRelatedSeriesNumber 0..1 integer "A.2.7.2 - Number of Study Related Series - DICOM tag (0020,1000)" """The number of series in the study. This element should be present if at least one series has been created within the study. Not all series may be available for exchange (e.g., due to resource availability, security, or other factors)."""
* studyRelatedInstancesNumber 0..1 integer "A.2.7.3 - Number of Study Related Instances - DICOM tag (0020,1002)" """The number of instances in the study. Not all instances may be available for exchange."""
* subject 1..1 SubjectCz "A.2.7.4 - Information about the subject (patient) - DICOM tag: (0010,0010), (0010,0020), (0010,0030)" """Information about the subject, usually the patient, of the imaging study. For Example: Patient's Name, Patient ID or Patient's Birth Date."""
* requestProcedureId 0..* string "A.2.7.5 - Requested Procedure ID - DICOM tag (0040,1001)" """Imaging request - The diagnostic request that led to the performance of this imaging study."""
* requestingPhysician 0..1 BackboneElement "A.2.7.6 - Requesting Physician - DICOM tag (0032,1032), (0032,1031)" """Service requester (referring physician or physician referring the patient)."""
* requestingPhysician.identifier 1..* Identifier "A.2.7.6.1 - Requesting Physician Identification - DICOM tag (0032,1031)" """Identification of the physician who requested the Imaging Service Request."""
* requestingPhysician.name 1..1 HumanName "A.2.7.6.2 - Requesting Physician Name - DICOM tag (0032,1032)" """Name of the physician who requested the Imaging Service Request."""
* procedure 0..1 string "A.2.7.7 - Scheduled Procedure Step Description - DICOM tag (0040,0007)" """Information about the procedure of which this imaging study was a part. A procedure is an act that is or was performed on or for a patient. It can involve a physical intervention, such as surgery, or a less invasive intervention, such as long-term services, counseling, or hypnotherapy."""
* performingPhysician 0..1 BackboneElement "A.2.7.8 - Performing Physicians - DICOM tag: (0008,1050), (0008,1052)" """Healthcare professional who evaluated the study (interpreted the images or other content)."""
* performingPhysician.identifier 1..* Identifier "A.2.7.8.1 - Performing Physician Identification - DICOM tag (0008,1052)" """Identification of the physician(s) administering the Series. One or more Items are permitted in this Sequence. If more than one Item, the number and order shall correspond to the value of Performing Physician's Name (0008,1050), if present."""
* performingPhysician.name 1..1 HumanName "A.2.7.8.2 - Performing Physicians Name - DICOM tag (0008,1050)" """Name of the physician(s) administering the Series."""
* institutionalDepartmentName 0..* string "A.2.7.9 - Institutional Department Name - DICOM tag (0008,1040)" """Location (organization) where the study was conducted."""
* radiopharmaceuticalInfoSeq 0..* id "A.2.7.10 - Radiopharmaceutical Information Sequence - DICOM tag (0054,0016)" """Radiation exposure from internal irradiation (following the administration of radiopharmaceuticals, expressed as a value in standard SI units [Bq])."""
* series 0..* BackboneElement "A.2.7.11 - RT Series information" """Information from individual series (for example, their names)."""
* series.seriesNumber 0..* id "A.2.7.11.1 - Series Number - DICOM tag (0020,0011)" """A number that identifies this Series."""
* series.seriesDescription 0..* string "A.2.7.11.2 - Series Description - DICOM tag (0008,103E)" """Description of the Series."""
* studyDescription 0..1 string "A.2.7.12 - Study Description - DICOM tag (0008,1030)" """Description of the study or classification of the performed study."""
* studyPhase 0..* string "A.2.7.13 - Study Phase" """A submodel containing information about the individual phases of an examination (typically for CT - e.g., native, arterial phase) and allowing structured recording of information about ionizing radiation exposure during imaging in these phases."""
* studyReason 0..* string "A.2.7.14 - Reason for Study - DICOM tag (0032,1030)" """The reason the study was performed."""
* studyComments 0..* string "A.2.7.15 - Study Comments - obsoleted  DICOM tag (0032,4000)" """User-defined comment."""
* studyEndpoint 0..* string "A.2.7.16 - Study end-point" """A network service providing access to the study, such as query, display, or retrieval."""
* modality 0..* CodeableConcept "A.2.7.17 - Modality - DICOM tag (0008,0060)" """A list of all modalities that were used to acquire the study."""
* studyStatus 1..1 string "A.2.7.18 - Study Status" """Current status of the DICOM imaging study."""
* accessionNumber 1..1 id "A.2.7.19 - Accession Number - DICOM tag (0008,0050)" """ID of the imaging service request. Unique within the organization."""
* studyDateTime 0..1 dateTime "A.2.7.20 - Study Date Time - DICOM tag:(0008,0020), (0008,0030)" """The date and time when the study was initiated."""