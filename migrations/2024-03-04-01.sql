-- TODO: Create Schema.

create table organization(
  org_id serial primary key,
  org_name text not null
)
;

-- NOTE: Facility is a clinic, a hospital, etc.
create table facility_type(
  fc_type_id serial primary key,
  fc_name text not null
)
;

create table facility(
  fc_id serial primary key,
  fc_name text not null,
  fc_type_id int not null references facility_type(fc_type_id),
  -- NOTE: Facility is owned by some company.
  org_id int not null references organization(org_id)
)
;

create table user_type(
  user_type_id serial primary key,
  user_type_name text not null
)
;

create table "user"(
  user_id serial primary key,
  user_type_id int not null references user_type(user_type_id)
)
;

-- NOTE:
--  1. We can't call it "doctors," because we have different types of service providers.
--  2. For example, we have doctors, technicians, nurses, etc.
create table provider_type(
  prov_type_id serial primary key,
  prov_type_name text not null
)
;

create table provider(
  prov_id serial primary key,
  prov_type_id int not null references provider_type(prov_type_id)
  -- TODO: Demography.
)
;

create table provider_facility_bridge(
  prov_id int not null references provider(prov_id),
  fc_id int not null references facility(fc_id),
  primary key(prov_id, fc_id)
)
;

create table provider_user_bridge(
  prov_id int not null references provider(prov_id),
  user_id int not null references "user"(user_id),
  primary key(prov_id, user_id)
)
;

create table patient(
  pt_id serial primary key
)
;

create table patient_user_bridge(
  pt_id int not null references patient(pt_id),
  user_id int not null references "user"(user_id),
  primary key(pt_id, user_id)
)
;

-- NOTE: For example, Assigned PCP (Primary Care Physician).
-- NOTE: This table is about Assigned Providers, not about Rendering Providers.
create table patient_provider_bridge(
  pt_id int not null references patient(pt_id),
  prov_id int not null references provider(prov_id),
  primary key(pt_id, prov_id)
)
;

-- NOTE: In Office Visit, Remote Visit, Chat, etc.
create table appointment_type(
  apt_type_id serial primary key,
  apt_type_name text not null
)
;

-- NOTE: First Visit, Follow-Up Visit, Annual-Wellness Visit (Yearly Check-Up), etc.
-- FIXME: Rename according to HL7 FHIR.
create table appointment_purpose(
  apt_purpose_id serial primary key,
  apt_purpose_name text not null
)
;

-- NOTE: New, Canceled, No-Show, Rescheduled, Started, Fulfilled.
-- FIXME: Use HL7 FHIR Statuses.
create table appointment_status(
  apt_status_id serial primary key,
  apt_status_name text not null
)
;

create table appointment(
  apt_id serial primary key,
  apt_type_id int not null references appointment_type(apt_type_id),
  apt_purpose_id int not null references appointment_purpose(apt_purpose_id),
  apt_status_id int not null references appointment_status(apt_status_id)
)
;

-- New, Fulfilled, Signed.
create table encounter_status(
  enc_status_id serial primary key,
  enc_status_name text not null
)
;

create table encounter(
  enc_id serial primary key,
  enc_status_id int not null references encounter_status(enc_status_id),
  apt_id int not null references appointment(apt_id) unique,
  -- NOTE: This is a Rendering Provider which may happen to be the Assigned Provider too.
  prov_id int not null references provider(prov_id),
  date_of_service date
)
;

create table encounter_patient_bridge(
  enc_id int not null references encounter(enc_id),
  pt_id int not null references patient(pt_id),
  primary key (enc_id, pt_id)
)
;
