# Conformance

## Implementation Notes

This page contains miscellaneous information on FHIR implementation. The content is primarily directed at implementers of Reporting Ill Travelers to CDC.

### Conventions

This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

SHALL indicates requirements that must be met to be conformant with the specification.

SHOULD indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

MAY describes optional behaviors that are free to consider but where the is no recommendation for or against adoption.

### Conformance Requirements

The conformance verbs (SHALL, SHALL NOT, SHOULD, MAY) used in this guide are defined in FHIR Conformance Rules.

#### Must Support

When reading the Profiles defined in this IG, Must Support on any profile data element SHALL be interpreted as follows:

- Systems SHALL be capable of populating data elements as specified by the profiles.
Systems SHALL be capable of processing resource instances containing the MUST SUPPORT data elements without generating an error or causing the application to fail. In other words, Systems SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
- In situations where information on a particular data element is not present and the reason for absence is unknown, Systems SHALL NOT include the data elements in the resource instance.
When accessing data, Systems SHALL interpret missing data elements within resource instances as data not present.

### US Core

- This IG also leverages the US Core set of profiles defined by HL7 for sharing individual health data in the U.S. Where US Core profiles exist, this IG either leverages them directly or uses them as a base for any additional constraints needed.

- Where US Core profiles do not yet exist, new profiles have been created.
