-- Выводим все Дела
create or replace procedure get_all_cases()
language plpgsql as $$
declare
    r record;
begin
    for r in
        select "CaseID", "CaseNumber", "Description"
        from "Case"
    loop
        raise notice 'CaseID: %, CaseNumber: %, Description: %', 
            r."CaseID", r."CaseNumber", r."Description";
    end loop;
end;
$$;
