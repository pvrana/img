### Imaging Methods in Healthcare
Imaging methods in medicine encompass a wide range of techniques and procedures that allow for viewing the internal structures or functioning of the body that are usually not visible from the outside. They provide insights into the location, size, structure, density, and movement of anatomical and other structures, enabling healthcare professionals and image processing algorithms in the diagnostic process to guide therapeutic decisions and assist in surgical procedures.

### Purpose of Imaging Methods
Imaging techniques are used for various purposes and in all stages of healthcare, from prevention, diagnosis, intervention, to follow-up monitoring. In public health and preventive medicine, as well as in therapeutic and palliative care, effective decisions rely on accurate diagnosis. Specialties where imaging techniques are extensively used include radiology, nuclear medicine, cardiology, cardiac surgery, dentistry and dental surgery, dermatology, gastroenterology, gynecology, internal medicine, neurology, oncology, pathology, pulmonology, and surgery.

### Importance of Imaging Techniques
While clinical judgment may suffice before treating many diseases, the use of diagnostic imaging services is of paramount importance for confirming, accurately assessing, and documenting the course of many diseases, as well as for evaluating response to treatment.

Imaging methods are utilized in prevention for screening certain diseases, such as breast cancer. As a diagnostic tool, imaging methods facilitate accurate diagnosis, injury assessment, and patient prognosis. Imaging procedures can also be employed for combined diagnostic and therapeutic purposes (also known as theranostic). Therapeutic interventions, i.e., procedures performed with the aid of imaging techniques, include, for example, interventional cardiology and radiotherapeutic procedures.

### Imaging Technologies
From a scientific perspective, imaging technologies utilize electromagnetic, electrical, or mechanical signals to detect bodily structures or functions and process these measurements into a visual form.

Nearly the entire electromagnetic spectrum can be used for medical imaging. Examples include magnetic resonance imaging (MRI), thermography, X-ray radiography, computed tomography (CT), and nuclear imaging, which uses injected or ingested radiopharmaceuticals, such as positron emission tomography (PET) and single-photon emission computed tomography (SPECT). Medical photography utilizes the spectrum between infrared and ultraviolet waves, including visible light.

Examples of electrical measurements are ECG, EEG, EMG, and EOG. These can be recorded into graphs that allow for the interpretation of muscular activity.

Mechanical forces, such as ultrasound or elastography, can be used for echography.

### Image Processing
The combination of hardware (instruments, devices) and accompanying software (which processes electrical signals) used in imaging is referred to as modalities. The software converts "raw" measurements and records using medical processing techniques into visual representations, such as images, films, graphs, or maps, which can subsequently be used for analysis. The term image processing also encompasses technologies for further enhancing images for purposes such as selective visualization, color 3D visualization, automatic measurements, and other interpretation-facilitating techniques.

### General Perception of an Imaging Study
The global standard for image records (studies) in healthcare is DICOM (Digital Imaging and Communications in Medicine). It offers a standardized representation of images along with related contextual information. It includes a unified methodology for acquiring, storing, and distributing medical images anywhere in the world. In other words, any DICOM-based image can be viewed by any application compatible with the DICOM standard. DICOM also provides services like managing imaging procedure worklists (MWL), printing images on film or digital media like DVDs, procedure status reporting (MPPS), such as completion of image acquisition, confirmation of successful image archiving, dataset encryption, removal of patient identification from datasets, arranging image layouts for viewing, storing image manipulations and annotations, image display calibration, ECG encoding, storing acquisition protocols.

#### Imaging Study
In the DICOM standard, images are stored in what are known as imaging studies. An imaging study encompasses a set of images acquired for a specific purpose, typically related to a particular question posed by a healthcare provider. An imaging study consists of a collection containing one or more imaging results (called series, see below) from one or more sources (called modalities, see below). It also describes the necessary contextual information about the imaging study and the images it contains, such as the hardware used to create them, the technologies and settings employed, the date, requested the healthcare service. This number links the request (order), the imaging study, and the resulting report.

#### Series
Each DICOM study contains one or more series. A series is a set of one or more DICOM instances (see below) that were created by a single device (modality, see below) during one encounter/session/episode with a patient. A series can be either a direct representation of the acquired imaging procedure (e.g. two X-ray projections of the chest) or a derived representation created using (but not storing) the original measured data (e.g. multiplanar reconstruction).

#### Instance
An instance is the smallest entity of a DICOM study, representing a persistently storable object, such as a slice of a CT image or a 3D image consisting of many "layers."

#### Modality
In the DICOM world, a modality represents either the device used to acquire data (e.g. CT, MRI, X-ray) or describes the type of data (e.g. radiotherapy object, secondary capture). A DICOM modality is one of the contextual structured information elements (tag 0008,0060), which describes the combination of hardware (machine, device) and accompanying software used in creating series and instances.

### Imaging Report
An imaging report is a written document that reflects the observations and interpretations of the results from an imaging study. It typically includes elements such as the reason the study was requested, relevant contextual medical information, the modality used and its settings, procedures and body localization that were used, descriptions of observations and findings, conclusions, and recommendations. Some of this metadata can be obtained from the DICOM study structure. The imaging report is a separate part of the medical documentation - "ZPRÁVA O POSKYTNUTÝCH ZDRAVOTNÍCH SLUŽBÁCH" - according to "odst. 3, Přílohy č. 1, Vyhlášky č. 98/2012 Sb.", and is provided to the referring physician and the patient.

Although the DICOM standard includes a specification for the textual part of a DICOM study "Structured Report (SR)" the medical record of the imaging report is usually created and stored separately from the images, typically within a healthcare information system (NIS, KIS, RIS, AIS, etc.) or increasingly as an EHR in a hospital information system (HIS). The linking element between the request, imaging study, and the resulting report is the unique Accession Number generated by the requesting department's system.

The imaging report is created by a radiologist or specialist. Many use specialized speech recognition software that allows them to dictate the report while simultaneously reviewing the images. Currently, imaging reports are not maintained in a structured data format. This is partly due to the narrative aspect of the report, which doesn't easily lend itself to structured formats. Speech recognition software has only recently developed capabilities for structured data entry, and the user interface is not always very user-friendly. Importantly, there is a need for a standard approach to reports at the document, paragraph, and concept level.