-- Создать копию таблицы по условию.

select i."ID",
	   i."FirstName",
	   i."Post",
	   i."Salary"
into table "InvestigatorCopy2"
from "Investigator" i
where i."Post" like 'Lt%';