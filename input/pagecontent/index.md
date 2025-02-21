### Introduction 
This implementation guide is based on [FHIR version R4]. Specify a set of rules that will be used for HL7 FHIR to define how to represent Imaging Report in the Czech national context, in line with European eHN guidelines.

Its main objective is to define the content components and the preferred structure to be used to construct a imaging report.The purpose of this standard is to define the representation of the imaging report as a patient's medical record for the purpose of electronic exchange of health information between individuals, healthcare providers and infrastructure in the Czech Republic. 

This includes both jurisdictional and cross-border scenarios.

This guide does not describe how to exchange this message.

### Included Areas
The document focuses on the standardization of the content of structured electronic records from imaging methods (radiological methods, nuclear medicine methods, ultrasound methods, etc.) and metadata, on aspects of interoperability and machine processing, as well as on the expansion of data, e.g. references to related records, selected DICOM data from imaging studies, additional attachments, etc. The document also focuses on aspects related to the exchange and sharing of these reports using information technology.

### Excluded Areas
The document does not cover the area of image documentation in the form of digital image records (studies) from devices. These image studies are created, processed, stored, and transmitted in standardized formats and using communication protocols of the international DICOM standard. For transmission or sharing between healthcare providers, there are currently two exchange networks available in the Czech Republic (ePACS and ReDiMed) based on the DICOM standard.

### Model
Basic Sections of the Imaging Report

| Section |	Cardinality	| Obligation | Link |
| - | - | - | - |
| A.1 Header with Administrative Document Data | 1..1 |	Mandatory |  |
| A.2 Document Content | 1..1 | Mandatory | - |
| A.2.1 Information about the order | 0..* | Mandatory | Link |
| A.2.2 Reason for Admission | 0..1 | Mandatory | Link |
| A.2.3 Sample information | 0..* | Mandatory | Link |
| A.2.4 Report of imaging method | 1..1 | Required | Link |
| A.2.5 Link to related report | 0..* | Optional | Link |
| A.2.6 Media (attachments) | 0..* | Optional | Link |
| A.2.7 DICOM metadata | 0..*| Optional| Link |

### Scope
This document presents ...

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Guidance]:
 - [Profile Guidance](profile-guidance.html): This page provides guidance on using the profile defined in this guide.  
- [Artifacts]:
 - [Artifacts Summary](artifacts.html): These page lists detailed descriptions and formal definitions for all the Czech Imaging Report artifacts and logic model defined in this guide.

- [About]:
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.


### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

### Globals Table
{% include globals-table.xhtml %}

