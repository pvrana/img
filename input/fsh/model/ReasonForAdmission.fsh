Logical: ReasonForAdmissionCz
Id: ReasonForAdmission
Title: "A.2.2 - Reason for Admission"
Description: """Imaging Report - Imaging Report reason for admission - A.2.2"""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* code 1..* CodeableConcept "A.2.2.1 Problem / diagnosis / condition description" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation.
- Preferred system(s): ICD-10 (MKN-10)
- Preferred system(s): Orphacode"""