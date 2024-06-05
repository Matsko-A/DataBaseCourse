-- Выводим информацию о всех следователях
create or replace function get_all_investigators()
returns table("InvestigatorID" int, "FirstName" varchar, "LastName" varchar) as $$
begin
    return query
    select "Investigator"."InvestigatorID", "Investigator"."FirstName", "Investigator"."LastName"
    from "Investigator";
end;
$$ language plpgsql;
