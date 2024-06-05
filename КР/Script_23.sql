-- Находит Дела по содержанию
create or replace function GetCasesByContent(contentKeyword varchar)
returns table("CaseID" int, "CaseNumber" varchar, "Description" varchar) as $$
begin
    return query
    select "CaseID", "CaseNumber", "Description"
    from "Case"
    where "Description" like '%' || contentKeyword || '%';
end;
$$ language  plpgsql;
