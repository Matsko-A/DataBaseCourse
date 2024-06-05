-- Выдает список Дел по ФИО осужденного
create or replace function GetCasesByConvictName(convictFirstName varchar, convictLastName varchar)
returns table("CaseID" int, "CaseNumber" int, "Description" varchar) as $$
begin
    return query
    select c."CaseID", c."CaseNumber", c."Description"
    from "Convict" conv
    join "ConvictCase" cc on conv."ConvictID" = cc."ConvictID"
    join "Case" c on cc."CaseID" = c."CaseID"
    where conv."FirstName" = convictFirstName and conv."LastName" = convictLastName;
end;
$$ language plpgsql;
