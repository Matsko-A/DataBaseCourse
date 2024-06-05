-- Находит Дела по содержанию
create or replace function GetCasesByInvestigatorName(investigatorFirstName varchar, investigatorLastName varchar)
returns table("CaseID" int, "CaseNumber" int, "Description" varchar) as $$
begin
    return query
    select c."CaseID", c."CaseNumber", c."Description"
  	from "Investigator" inv
    join "InvestigatorCase" ic on inv."InvestigatorID" = ic."InvestigatorID"
    join "Case" c on ic."CaseID" = c."CaseID"
    where inv."FirstName" = investigatorFirstName and inv."LastName" = investigatorLastName;
end;
$$ language plpgsql;
