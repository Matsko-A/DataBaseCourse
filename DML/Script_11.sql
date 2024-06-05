-- скрипт, который изменяет данные в столбце,
-- применив математические вычисления

update "Investigator" 
set "Salary" = "Salary" * 2
where "FirstName" like '%Sam%';