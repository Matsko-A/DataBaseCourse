create or replace function add_case
(
    p_casenumber int,
    p_description varchar
)
returns void as $$
begin
    insert into "Case" ("CaseNumber", "Description")
    values (p_casenumber, p_description);
end;
$$ language plpgsql;
