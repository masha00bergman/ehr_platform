# The EHR Platform Project

This is an attempt to create a simple medical platform using Postgres.

Electronic health record (EHR) systems are digital records of a patient's
medical history that are used by healthcare systems to collect
and store patient information.

## Resources

Organization https://hl7.org/fhir/R5/organization.html

Location https://hl7.org/FHIR/R5/location.html

Practitioner https://hl7.org/fhir/R5/practitioner.html

Patient https://hl7.org/fhir/R5/patient.html

Person https://www.hl7.org/fhir/R5/person.html

Appointment https://hl7.org/fhir/R5/appointment.html

Encounter https://hl7.org/fhir/R5/encounter.html


## Overview

![ER Diagram](ehr.png)

## Installation

The project implies Docker, Docker Compose and official [Postgres Image](https://hub.docker.com/_/postgres).

```bash
docker-compose up
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
