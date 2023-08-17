
<table border="1">
    <tr>
        <th colspan="4" style="background-color: #DEEBF7; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE I: Advance Directive Information</b> <i>(in STU1 scope)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">1</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentReference.html">ADI Document Reference</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-documentreference.html">US Core DocumentReference</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">2</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/clinicaldocument.html">ClinicalDocument</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">3</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PACPComposition.html">ADI Personal Advance Care Plan Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care information plan.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Participant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a person's advance directives in some capacity such as healthcare agent or healthcare agent advisor.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-ParticipantConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a consent for an advance directive participant such as a healthcare agent or advisor and power or limitation granted to such persons.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">7</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
        <td style="padding: 7px;"><p>This profile defines the base requirements for all ADI Goals.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-goal.html">US Core Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a personal preference for a type of medical intervention (treatment).</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalGoal.html">ADI Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">11</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">12</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
</table>

### Patient Stories and Personas

#### Create in a digital form and make available for sharing and accessing advance directive information

Angie has Sickle Cell Disease. She worries that if she contracts COVID-19 and becomes unable to communicate with medical personnel, they won't be familiar with her history and specific treatment needs. 


She uses a consumer facing tool to create a digital advance directive or upload a scanned copy of her paper advance directive document. This tool may any customer-facing application, including but not limited to an EHR or a specialized care application. Her interoperable digital advance directive information is made available by being stored in a registry/repository/HIE/QHIN/EHR.


Angie shares her advance directive information with her medical proxy/healthcare agent and primary care physician so if either are contacted by a treating provider in an emergency, they can make her advance directive accessible to inform treatment.

<img src="./patient_story_1a.png" alt="Patient Story 1a" style="width: 100%; float: none; align: middle;"/>
<br clear="all" />

<!-- Future versions
### Create in a digital form and make available for sharing and accessing Encounter-Centric Patient Instructions
<p>
Steven is a 34 year old man who has had Cystic Fibrosis all his life. He created his advance directive a few years ago when his condition sharply worsened. He is eligible for a lung transplant due to his age and disease state. 
</p>
<p>
His advance directive states that he wants no life-sustaining treatment if he has a health crisis that warrants those measures, and is unable to communicate for himself. Steven doesn't want to be resuscitated only to wait for a lung transplant that may never happen. 
</p>
<p>
Steven gets the call one night that he has been matched to a donor and goes immediately to the hospital for his lung transplant. 
</p>
<p>
The surgeon meets with Steven prior to the procedure and asks him if he has specific instructions related to the transplant encounter, should a situation arise during surgery that requires additional treatment decisions to be made. 
</p>
<p>
Steven’s surgeon creates an order, based on Steven’s consent, about his decision to receive life-sustaining treatment during the current encounter. Steven feels he has a chance at a longer life with a new lung that he hasn't been able to consider until now. 
</p>
<p>
Steven's patient instructions and consent are documented and signed-off in the clinical record to enable the entire medical team to have visibility into Steven’s instructions during his surgical procedure.
</p>
<p>
Steven’s patient instructions and associated order, as part of the encounter summary documentation, is made available from the EMR to other care settings (outside the clinical record) by being stored in a registry/repository/HIE/QHIN/EHR as a result of integration that exists. 
</P>
<img src="./patient_story_1b.png" alt="Patient Story 1b"/>
<br clear="all" />

### Create in a digital form and make available for sharing and accessing Portable Medical Order for Life-Sustaining Treatment
<p>
Frank is a 78 year old man who has end stage kidney disease and receives dialysis 3x per week. He receives long term supportive services in his home. Frank is cognitively intact.
</p>
<p>
Frank suffers from a chronic health condition that has resulted in a limited life-expectancy of 6-12 months. He creates an advance directive with his caregiver. Frank does not want to have life-sustaining treatment rendered if his condition warrants those measures if he is unable to communicate for himself. 
</p>
<p>
Frank's condition worsens sharply one day and he is taken by ambulance to the nearest hospital for treatment. Frank tells the ER physician about his advance directive and the physician writes a DNR order, valid for that hospitalization only, to Frank's medical record. 
</p>
<p>
Frank is transferred to a skilled nursing facility for post-acute care. The practitioner overseeing his care in the Skilled Nursing Facility (SNF) meets with Frank to discuss his goals of care, his hospital DNR, and reviews his advance directive with him. He recommends creation of a portable medical order for life-sustaining treatment to align with Frank's desire to prevent an unwanted hospital transfer. 
</p>
<p>
The practitioner ensures the portable medical order for life-sustaining treatment document is added to Frank’s SNF medical record so it is accessible by facility staff in case of emergency. Frank also receives a copy of this new document, which he places in his bedside table.
</p>
<p>
The facility's medical record is integrated to the broader healthcare ecosystem which accessed Frank's advance directive, and now enables his portable medical order for life-sustaining treatment document to be available in a registry/repository/HIE/QHIN so as to inform treatment during a transition of care. 
</p>
<p>
One evening Frank sustains a significant change in condition that renders him unconscious. The SNF care team reviews his portable medical order for life-sustaining treatment document to find he doesn't want to receive life-sustaining treatment. They call 911 in accordance with facility policy. Emergency access to Frank's ADI is granted, and the EMS personnel render comfort measures in concordance with his wishes. 
</p>
<img src="./patient_story_1c.png" alt="Patient Story 1c"/>
<br clear="all" />

-->
 
