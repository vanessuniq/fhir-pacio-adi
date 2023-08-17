The Advance Directive Interoperability (ADI) implementation guide (IG) describes how to use existing HL7 FHIR® standards to create, update, share, verify, and exchange information about an individual's advance medical goals, preferences, and priorities for care in the event the individual is unable to communicate this information to medical teams for himself or herself. Advance directives in this IG includes person-authored advance directives and personal advance care plans, and patient consent information attesting to a patient authorizing a person or persons to serve as a healthcare agent or attesting to permission granted to share advance directive information with others. It also includes practitioner-authored patient instructions (obligation and prohibitions), practitioner-authored portable medical orders for life sustaining treatments.

<blockquote class="stu-note">
    <p>
    STU1 supports only <a href="./adi_type1.html"> Person-authored Advance Directives (ADI Content Type 1)</a> documents. Reference the <a href="./content_type_overview.html">ADI Content Overview</a> page in this IG for further information about the different ADI content types.
    </p>
</blockquote>

### Background
<p>
Advance directive interoperability is a complex area that involves many stakeholders. The HL7 workgroup sponsor for this FHIR IG is Patient Empowerment. HL7 co-sponsor workgroups include Patient Care, Community Based Care and Privacy, and Orders & Observations. As part of PACIO’s main goal in improving care transitions, the Post-Acute Care Interoperability (PACIO) Community has adopted this project as a critical use case. The PACIO Community has a strong interest in the topic of advance directive interoperability with FHIR and will support the community engagement and technical FHIR® IG development needed for advance directives interoperability. PACIO is supported by MITRE, CMS, ONC and many other stakeholders (clinical, technical, and industry associations).
</p>
<p>
FHIR profiles have been developed for several existing FHIR resources to represent advance directive Content Type 1 such as: living will, durable medical power of attorney, personal health goals at end of life, care experience preferences, emergency intervention preferences under certain circumstances, and upon death preferences. 
</p>

<p>&nbsp;</p>

#### About PACIO
<p>
The [PACIO Project](https://pacioproject.org/) is a collaborative effort to advance interoperable health data exchange between post-acute care (PAC) and other providers, patients, and key stakeholders across health care and to promote health data exchange in collaboration with policy makers, standards organizations, and industry through a consensus-based approach.
</p>
<p>
The primary goal of the PACIO Project is to establish a framework for the development of Fast Healthcare Interoperability Resources (FHIR) technical implementation guides and reference implementations that will facilitate health data exchange through standards-based use case-driven application programming interfaces (APIs).
</p>


##### Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive documentation supports more effective sharing of this information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers

**Note:** The IG was initially developed during the beginning of the COVID-19 pandemic, before vaccines were available and many patients were put on ventilators at hospitals. The narrative below is meant to illustrate a situation where a patient in this case would want their advance directive in place.

The aging population receiving healthcare in skilled nursing facilities and assisted living communities were under forced isolation to reduce the risk of contracting COVID-19. Additionally, due to the pandemic, those requiring medical care  experienced transitions of care without family or a personal advocate to accompany them in order to influence medical care or be at their side; concerns about the viral transmission potential associated with paper advance directive documents further complicate transitions of care. The impact created a sense of disempowerment, isolation, and a disconnection with the world they can no longer safely interact freely with.

<p>
Never before had the availability of verifiable digital advance directive documents been so essential to delivering care.
</p>
<p>
Providers understood that a person’s goals, preferences, and priorities for care were a critical element in a person-centered healthcare system.
</p>
<p>
The role of technology and expanded adoption by the aging population, providers, and care teams brought to the forefront the expectation of seamless accessibility of advance directive information.
</p>

### Audience/Expected Users
<p>
The audience for this IG includes architects and developers of healthcare information technology (HIT) systems in the US Realm that exchange clinical and non-clinical data. Business analysts and policy managers can also benefit from a basic understanding of the use of FHIR profiles across multiple implementation use cases. Finally, Quality Reporting Agencies, Standards Development Organizations (SDOs), Payors, Providers and Patients will benefit from this IG.
</p>

### Scope and Boundaries

This initial version (STU1) defines the minimum conformance requirements for digital representation and exchange of person-authored advance directives and personal advance care plans (e.g. a person’s advance medical treatment and intervention goals, preferences and priorities), regarding potential future medical care in the event the individual becomes a patient and cannot speak for himself or herself. The intervention preferences may be conditional upon a specific health condition or physical situation. It also defines minimum conformance for the representation of patient consent for the appointment of a healthcare agent or agents, and consent to share advance directive information.

A subsequent version of this IG will define the minimum conformance requirements for digital representation and exchange of practitioner-authored encounter-centric patient instructions regarding medical treatment and intervention preferences and priorities that are immediate and apply to the current encounter. In additions, a subsequent version of this IG will define the minimum conformance requirements for digital representation and exchange of practitioner-authored advance medical treatment orders. The representation creates a portable record of medical orders regarding specific aspects of life-sustaining medical treatments a patient does or does not want to receive, which could be performed during a potential future medical care event if the patient were to require life-sustaining medical interventions due to a health crisis or emergency. These orders include instructions commonly found in portable medical orders for life-sustaining treatments, and may include other orders such as but not limited to Do Not Hospitalize and Do Not Intubate (DNI) orders.

In addition, the current version of this FHIR IG covers the use of RESTful API interactions for creation, sharing, query/access, and verification of advance directive documentation between systems. It is intended to address advance directive interoperability needs for Content Type 1, where the author is the individual that is making medical intervention goals, preferences, priorities known in advance. This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to make their own wishes known.
Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders, Content Type 3.


### How to read this Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.

* **Home**: The home page provides the introduction and background information to set context for the use of the HL7 FHIR® ADI IG.
* **Table of Contents**: A summary of the sections in the IG. 
* **General**: 
  * These pages provide an overview of the types of advanced directives and overall guidance in using the ADI representative profiles and transactions, and security and privacy considerations.
* Menu items are split into categorizations by each ADI content type:
  * <a href="./adi_type1.html">Person-Authored</a>: Person-authored advanced directives for sharing an individual's medical treatment and intervention goals. Content includes patient stories and personas, common use cases, and conceptual models.
  * <a href="./adi_type2.html">Encounter-centric</a>: Practitioner-authored advanced directives which are related to a current or immediate episode of care.
  * <a href="./adi_type2.html">Portable Medical Orders (PMO)</a>: PMOs are practitioner-authored advance directives which comprise a set of medical orders intended to follow a patient and be available across a continuum of care.
* Each content type menu further contains:
  * *Stories and personas*: Patient stories and personas give context to the data exchange standards detailed in the technical areas of the IG. They allow the non-technical reader to envision situations in which the IGs provisions would apply, and ensure that the IG meets the intended needs for exchange of this type of information.
  * *Use cases*: A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the use case.
  * *Conceptual model*: illustrating the structure and relationships among FHIR profiles.
  * _Formal Specification_: Information about conformance to the guide including Must Support requirements, document signatures, and document workflow.
  * *Security considerations*: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors, including authentication, authorization, and logging requirements and guidance.
* **FHIR Artifacts**: These sections provide detailed descriptions and formal definitions for the relevant FHIR artifacts defined in this guide, including profiles, extensions, terminology, and examples. A capability statement for conformance by implementers is also included.
* **More**: Sections which include a glossary and links to download the entire IG specification, FHIR structure definitions, and examples.



### Dependencies
<p>This implementation guide relies on the following other specifications:</p>
<ul>
  <li><a href="http://hl7.org/fhir/R4/">FHIR R4</a> - The version of FHIR used as the base for this implementation guide.</li>
  <li><a href="https://hl7.org/fhir/us/core/STU4/index.html">US Core STU4.0.0</a> - The version of US Core based on FHIR R4.</li>
</ul>

