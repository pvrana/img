Logical: HeaderImagingReportCz
Id: HeaderImagingReport
Title: "A.1 - Imaging Report header data element"
Description: """Imaging Report - Imaging Report header data element - A.1"""

* insert SetFmmandStatusRule ( 1, draft )

* subject 1..1 SubjectCz "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject" """Identification of the patient/subject and Patient/subject related contact information"""
* payer 0..1 PayerCz "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care." """Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* coverage 1..1 CoverageReportCz "A.1.4 - Information about coverage - the default value will be the patient's insurance company" """Coverage information - Information about method of coverage, payer identification data and additional information"""
* author 1..* AuthorCz "A.1.5 - Author (by whom the Imaging report was/were authored). Multiple authors could be provided." """Author (by whom the Imaging report was/were authored). Multiple authors could be provided."""
* attester 0..* AttesterCz "A.1.6 - Attester (multiple attesters could be provided)" """Attester (multiple attesters could be provided)"""
* legalAuthenticator 0..1 LegalAuthenticatorCz "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)" """Legal authenticator (The person taking responsibility for the medical content of the document)"""
* documentMetadata 1..1 DocumentMetadataCz "A.1.8 - Document metadata" """Document metadata"""
