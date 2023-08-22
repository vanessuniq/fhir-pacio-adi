Profile: PADIPACPComposition
Parent: ADICompositionHeader
Id: PADI-PACPComposition
Title: "ADI Personal Advance Care Plan Composition"
Description: "This profile encompasses information that makes up the author’s advance care information plan."


// TODO add administrative info section 81381-6

* author only Reference($USCorePatient)

* section ^slicing.discriminator.type = #pattern 
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false   // can be omitted, since false is the default
* section ^slicing.description = "Slice based on $this value"

* section 1..*
* section.text 1..1 MS
* section ^slicing.discriminator.type = #pattern 
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false   // can be omitted, since false is the default
* section ^slicing.description = "Slice based on $this value"
* section contains
    healthcare_agent 1..1 and
    gpp_for_certain_health_condition 0..1 MS and
    gpp_personal_care_experience 0..1 MS and
    gpp_upon_death 0..1 MS and
    additional_documentation 0..1 MS and
    witness_and_notary 0..1 MS and
    administrative_information 0..1 MS

* section[healthcare_agent] ^short = "Healthcare agents, healthcare agent advisors, and consent regarding their roles, powers, and limitations"

* section[healthcare_agent].title 1..1 MS
* section[healthcare_agent].code 1..1 
* section[healthcare_agent].code = $LOINC#81335-2
* section[healthcare_agent].entry 
* section[healthcare_agent].entry only Reference(PADIParticipantConsent or PADIParticipant)
* section[healthcare_agent].emptyReason from PADINoHealthcareAgentIncludedReasonVS (required)
* section[healthcare_agent] obeys HCA-section-entries
// TODO add guidance around this emptyReason element
// TODO add invariant stating that if entry exists, then agent Consent must exist

* section[gpp_personal_care_experience] ^short = "Quality of Life related personal care experiences, personal goals, and priorities"
* section[gpp_personal_care_experience].title 1..1 MS
* section[gpp_personal_care_experience].code 1..1 
* section[gpp_personal_care_experience].code = $LOINC#81338-6
* section[healthcare_agent].orderedBy 
* section[gpp_personal_care_experience].entry 
* section[gpp_personal_care_experience].entry only Reference(PADICareExperiencePreference or PADIPersonalPrioritiesOrganizer or PADIPersonalGoal)


* section[gpp_for_certain_health_condition] ^short = "Preference care plans defined for specific situations and/or conditions"
* section[gpp_for_certain_health_condition] ^definition = "The section defines Goals, Preferences, and Priorities of the person under certain health conditions.  In this section, the CarePlan resource provides a construct by which the identified personal values and preferences for treatment can be integrated into the plan of care which acts, from a workflow or process perspective, as the roadmap for care delivery and treatment. "
* section[gpp_for_certain_health_condition].title 1..1 MS
* section[gpp_for_certain_health_condition].code 1..1 
* section[gpp_for_certain_health_condition].code = $LOINC#81336-0
* section[gpp_for_certain_health_condition].entry 
//* section[gpp_for_certain_health_condition].entry only Reference(PADIPreferenceCarePlan or PADIPersonalInterventionPreference or PADIPersonalInterventionRequestPreference or PADIPersonalPrioritiesOrganizer or PADIPersonalGoal)
* section[gpp_for_certain_health_condition].entry only Reference(PADIPreferenceCarePlan)

* section[gpp_upon_death] ^short = "Goals, preferences, and priorities upon death"
* section[gpp_upon_death].title 1..1 MS
* section[gpp_upon_death].code 1..1 
* section[gpp_upon_death].code = $LOINC#81337-8
* section[gpp_upon_death].entry 
//* section[gpp_upon_death].entry only Reference(PADIPreferenceCarePlan or PADIPersonalInterventionPreference or PADIPersonalInterventionRequestPreference or PADIPersonalPrioritiesOrganizer or PADIAutopsyObservation or PADIOrganDonationObservation or PADIPersonalGoal)
* section[gpp_upon_death].entry only Reference(PADIPreferenceCarePlan or PADIPersonalInterventionPreference or PADIPersonalPrioritiesOrganizer or PADIAutopsyObservation or PADIOrganDonationObservation or PADIPersonalGoal)


* section[additional_documentation] ^short = "Observations regarding the existence of other advance directive related information"
* section[additional_documentation].title 1..1 MS
* section[additional_documentation].code 1..1 
* section[additional_documentation].code = $LOINC#77599-9

* section[additional_documentation].entry only Reference(PADIDocumentationObservation)


* section[witness_and_notary] ^short = "Witness and notary information"
* section[witness_and_notary] ^definition = "A participant who has assumed the role of Notary and attested to the authenticity of the signers and accuracy of the composition/document."
* section[witness_and_notary].title 1..1 MS
* section[witness_and_notary].code 1..1 
* section[witness_and_notary].code = $LOINC#81339-4

* section[witness_and_notary].entry only Reference(PADIParticipant)

* section[administrative_information] ^short = "Administrative information associated with this personal advance care plan"
* section[administrative_information].title 1..1 MS
* section[administrative_information].code 1..1 
* section[administrative_information].code = $LOINC#81381-6





/*
Invariant:  HCA-section-entries0
Description: "0 - If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.exists().not()"
//Expression: "entry.resolve() is Consent" fail
Severity:   #error



Invariant:  HCA-section-entries1
Description: "1 -If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is Consent)"
Severity:   #error



Invariant:  HCA-section-entries2
Description: "2 - If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is relatedPerson)"
Severity:   #error

*/

Invariant:  HCA-section-entries
Description: "If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.exists().not() or (entry.where($this.resolve() is Consent).exists() and entry.where($this.resolve() is relatedPerson).exists())"
Severity:   #error

