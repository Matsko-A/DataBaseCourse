create or replace function add_investigator
(
    p_firstname varchar,
    p_lastname varchar
)
returns void as $$
begin
    insert into "Investigator" ("FirstName", "LastName")
    values (p_firstname, p_lastname);
end;
$$ language plpgsql;
