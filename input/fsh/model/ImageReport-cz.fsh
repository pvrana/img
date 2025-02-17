Logical: ImagingReportCz
Id: ImagingReportCz
Title: "A - Imaging Report (eHN)"
Description: """Imaging Report"""
* header 1..1 HeaderImagingReport "A.1 - Imaging Report header data element" """Imaging Report header data element"""
* body 1..1 BackboneElement "A.2 - Imaging Report body data element" """Imaging Report body data element"""
* body.presentedForm 0..1 BackboneElement "A.2.0 - Imaging Report in its narrative form" """Imaging Report in its narrative form"""
* body.informationAboutOrder 0..* InformationAboutOrder "A.2.1 - Information about the order" """Information about the order"""
* body.reasonForAdmission 0..1 ReasonForAdmission "A.2.2 - Reason for Admission" """Reason for Admission"""
* body.sampleInformation 0..* SampleInformation "A.2.3 - Sample information" """Sample information """
* body.reportOfImagingMethod 1..1 ReportOfImagingMethod "A.2.4 - Report of imaging method" """Report of imaging method"""
* body.linkToRelatedReport 0..* LinkToRelatedReport "A.2.5 - Link to related report" """Link to related report"""
* body.attachments 0..* Attachments "A.2.6 - Media (attachments)" """Media (attachments)"""
* body.DICOMMetadata 0..* DICOMMetadata "A.2.7 - DICOM metadata" """DICOM metadata"""