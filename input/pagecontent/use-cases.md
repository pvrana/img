An imaging report is an important source of information for healthcare professionals across all types of healthcare providers regarding the patient's health status and any medical complications. The REPORT is considered crucial because the attending physician determines the further course of action based on the medical findings contained in the report. REPORTS from previous examinations, even those conducted for other healthcare providers, are important for assessing the development of the patient's health status or complications. The availability of these REPORTS among healthcare providers is a significant need in modern medicine.

Imaging methods are complementary health services that are performed exclusively upon request (a service request) by the attending physician who ordered the examination. The attending physician may not be from the same healthcare facility. The primary recipient of the IMAGING REPORT is the attending physician who ordered the examination. However, the REPORTS can also serve as a source of information for various other recipients, including the patient, and can be a source of information useful for other purposes.

The exchange or sharing of REPORTS among different entities is mostly non-standardized and does not allow the nature of the data contained in this medical documentation to be determined without actually opening and reading the document.

The aim of this document is to define a standardized informational content and structure of the data set for imaging reports, including metadata that will meet the needs for use cases described later and (considering the possibility of cross-border exchange) but also useful in the local environment of individual providers.

The list of use cases arising from "business" requirements is summarized below in Table 2. The subject of this functional specification is only use case UC5.2.1, which specifies the creation of an electronic health record with structured exchange content. Use cases UC5.2.2-3 are addressed within WP5.5 - Exchange of Medical Documentation. Use cases UC5.2.4-5 are not included in the scope of the functional specification.

### Actors

#### Performer
A performer is anyone who conducts (has conducted) an instrumental examination, i.e. the recording of an image.

#### Author
An author is anyone who has compiled or created the report (document). The author can be a natural person, such as a healthcare worker, or an entity (system), such as AI.

#### Validator
A validator is anyone who has verified the formal and factual content of the document, i.e. the document's structure, completeness, and semantic correctness of the data within the document, its integrity, etc. The validator can be a natural person or a system.

#### Sender
A sender is anyone who initiated the sending of the report (when, to whom, where, how).

The sender can be understood from different levels of abstraction as:
- Employee of the originator
- Originator
- Information system of the originator
- Domain for sharing electronic health records (EHR)
- Sending refers to the delivery of the document in electronic form via information and communication technologies.

#### Recipient
A recipient is anyone to whom the report (document) is intended (in the sense of an addressee) or who obtained the document, either be specific (e.g. referring physician) or non-specific (able to search and view the patient’s health records).

A recipient is generally a person, organization, or information system. It can be specific (e.g. referring physician) or non-specific (able to search and access the patient's health records).

The recipient can be understood from different levels of abstraction as:
- Referring physician (including cases where delivery is through the patient).
- Workplace of the referring physician (e.g. hospital ward of the same or another provider).
- Another healthcare provider (e.g. registered physician, continuity of care, emergency care) or providers of health or social services upon request for documentation, if the patient is under their care and it is necessary for that care.
- Patient, including a legal guardian or a representative with granted consent.
- In infrequent cases, also a review doctor from the health insurance company.
- Exceptionally, also authorized non-healthcare professionals or organizations in connection with duties arising from the law, such as courts, police, or public authorities (PA).

#### Originating IS
Originating information systems refer to Clinical Information Systems (CIS), Radiological Information Systems (RIS), Ambulatory Information Systems (AIS), ACS systems, and Trusted Electronic Archives (TEA).

#### Receiving IS
On the healthcare providers' side, these systems refer to similar systems as on the side of the originator. For some recipients, such as patients or public authorities (PA), these may include additional systems, such as the Integrated Data Box System (IDBS).

#### EHR System
An EHR (Electronic Health Record) system refers to systems for the collection and sharing of electronic health records of patients within an affinity domain, for example, based on infrastructural IHE profiles.

#### eHealth Services
eHealth services refer to electronic healthcare services, such as IDRR, eREG, NCP, eMeDocS, etc. as well as intermediary services, such as the state's basic registry services.

### Creation of Report

The report can be delivered to:
- the entity that requested the medical procedure
- another entity (for example, when the patient is referred to another facility)
- the patient

The report should contain both machine-readable and human-readable content! |

#### Creation of an Interoperable Structured Document for Imaging Reports

**Purpose**
A summary of the inpatient healthcare episode for a healthcare professional, including the transfer of relevant medical information to ensure continuity of care, which is 'sent' (i.e. delivered) to the patient's physician and/or another designated recipient upon discharge from the hospital.

**Significance**
The evaluation of information from imaging methods and its communication (delivery) to the referring physician. The originator (healthcare provider) is obligated to retain the report as a separate part of the medical documentation for a legislatively mandated period and to deliver it to the referring physician, and upon request, in justified cases, also to other healthcare professionals.

The report serves purposes of prevention, diagnosis, treatment planning, verification and evaluation of health status, assessment of treatment progress, etc. It contains information such as the reason for the examination request, relevant details about the examination (including the modality used and its settings, procedures, and body localization), but primarily the description of observations and findings, conclusions, and potentially recommendations. The information may vary, for example, depending on the type of examination.

**Domain:** Clinical domain / Domain for the exchange and sharing of healthcare information

**Scope:** National / Regional / Local

**Context**
An imaging report is prepared after an examination has been conducted, an image record (study) created, the image observed by a physician, and the findings documented. The final report is delivered only once it has been completed and finalized. This is especially true when delivering the report to a patient or a healthcare professional from a different healthcare provider. If the requester is a healthcare professional or department from the same healthcare provider, preliminary reports may sometimes be released, but with a clear indication that it is not the final report. In some cases, the examination undergoes two phases, known as the first and second readings (verification of findings). This usually occurs in more complex examination methods, in cases where the radiologist is uncertain, or when a chief or "senior" radiologist verifies the results of a "junior" doctor's examination. After the second reading, the doctor may finalize the report or add additional findings from the second reading.

The report is a separate part of the medical documentation regarding the provided healthcare service and does not need to be (and usually is not) stored as part of the image study. Therefore, it should include some necessary information that is otherwise only contained in the image study, as well as a clear reference to the image study and its storage location. (Note: The text of the findings is sometimes attached to the image study as an additional DICOM SR series)

An important requirement is the clear and verified identification of the examination subject.

**Information:** Healthcare information from imaging methods

**Actors:**
- Performer
- Author
- Validator
- Sender
- Recipient
- Originating IS
- Receiving IS
- EHR System
- eHealth Services

**Assumptions**
There is a shared (national) standard for the content and format of Imaging Reports.

Providers (both senders and recipients) use interoperable information systems for creating and processing, which work with standardized coding systems. In areas where the use of coding systems is not yet widespread, they use free-text notation while respecting the requirements for completeness, accuracy, and readability of the content. There are systems in place for the secure and reliable targeted transmission or sharing of medical documentation.

**Functional description of the process:**

1. The performer plans, conducts, and describes the instrumental examination in the originating IS.

2. The author conducts the observations, records the observation results and findings. The completed report is signed (with a recognized electronic signature). The originating IS attaches the author's electronic name tag and timestamp to the report.

3. The author attaches appendices to the report.

4. The validator (in case of a "second reading") performs a review observation and records new findings as an addendum to the report. The completed addendum is signed (with a recognized electronic signature). The originating IS attaches the validator's electronic name tag and timestamp to the addendum.

5. The author, in the case of a "second reading," the validator closes the report. The originating IS attaches metadata from the DICOM study and an electronic timestamp and the name tag of the person closing the report.

6. The originating IS saves the complete REPORT, including attached metadata, into the document repository, and if the REPORT contains components with electronic signatures, it is also saved into a trusted storage.

7. The document repository registers the REPORT in the document register.

Subsequent processes associated with sending (delivering) the report to recipients are described in use cases, which are part of the implementation specification for the standardization of the exchange and sharing of healthcare information.