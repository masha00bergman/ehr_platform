-- TODO: Create Schema.

create table organization(
    org_id serial primary key,
    org_name text not null
)
;

create table facility_type(
    fc_type_id serial primary key,
    fc_name text not null
)
;

create table facility(
    fc_id serial primary key,
    fc_name text not null,
    fc_type_id int not null references facility_type(fc_type_id),
    org_id int not null references organization(org_id)
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
    prov_id int not null,
    fc_id int not null,
    primary key(prov_id, fc_id)
)
;

create table patient_golden_record(
    pt_master_id serial primary key
    -- TODO: Demography and Other Data.
)
;

create table patient(
    pt_id serial primary key,
    pt_master_id int not null references patient_golden_record(pt_master_id)
    -- TODO: Demography and Other Data.
)
;
