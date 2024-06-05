create or replace function add_convict
(
    p_firstname varchar,
    p_lastname varchar
)
returns void as $$
begin
    insert into "Convict" ("FirstName", "LastName")
    values (p_firstname, p_lastname);
end;
$$ language plpgsql;
