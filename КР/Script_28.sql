-- Триггер для вывода информации при добавлении преступника
create or replace function get_all_investigators()
returns table("InvestigatorID" int, "FirstName" varchar, "LastName" varchar) as $$
begin
    return query
    select "Investigator"."InvestigatorID", "Investigator"."FirstName", "Investigator"."LastName"
    from "Investigator";
end;
$$ language plpgsql;

create trigger convict_insertion_trigger
after insert on "Convict"
for each row
execute function notify_convict_insertion();