Logical: SampleInformationCz
Id: SampleInformation
Title: "A.2.3 - Sample information"
Description: """Imaging Report - Imaging Report sample information - A.2.3 \r\nInformation about the sample if the subject of the examination is a sample."""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* identifier 1..* Identifier "A.2.3.1 Specimen identifier" """Sample identifier that is unique within a defined scope, e.g., identifier assigned by an ordering system, collection site, receiving site, etc."""				
* speciesType 0..1 CodeableConcept "A.2.3.2 Type of species" """Biological species refers to samples taken from non-human subjects. - Preferred system(s): SNOMED CT [TypeOfSpeciesCodelist]"""				
* material 1..1 CodeableConcept "A.2.3.3 Material" """Material of the collected and examined sample. - Preferred system(s): SNOMED CT [SpecimenMaterialCodelist]"""		 		
* collected 0..1 dateTime "A.2.3.4 Collection period" """Date and time or duration of sample collection. - Preferred system(s): ISO 8601"""				
* anatomicLocation 0..1 CodeableConcept "A.2.3.5 Anatomical location" """Anatomical location (position within the body, laterality) from which the material is taken, such as 'left elbow'. - Preferred system(s): SNOMED CT [BodyLacation|LocationICT-O-3|Laterality Codelists]"""				
* morphology 0..1 CodeableConcept "A.2.3.6 Morphology" """Morphological abnormalities of the anatomical location from which the material is taken, such as 'lesion or ulcer'. - Preferred system(s): SNOMED CT [MorfologyCodelist]"""				
* sourceDevice 0..1 CodeableConcept "A.2.3.7 Source Device" """In case the material is not directly taken from the patient but comes from an object related to the patient, such as a 'catheter'.
 - Preferred system(s): SNOMED CT
 - Preferred system(s): EMDN"""				
* collectionMethod 0..1 CodeableConcept "A.2.3.8 Collection procedure/method" """Method, manner of sample collection, if relevant to the results. - Preferred system(s): SNOMED CT [CollectionMethodCodelist]"""				
* receivedDateTime 0..1 dateTime "A.2.3.9 Received date" """Date and time the sample is received by the facility performing the examination. - Preferred system(s): ISO 8601"""				