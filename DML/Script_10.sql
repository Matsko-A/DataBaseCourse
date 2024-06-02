-- написать скрипт, который изменяет данные в таблице по критерию

update "Investigator" 
set "FirstName" = 'Walter'
where "FirstName" like '%Alex%';