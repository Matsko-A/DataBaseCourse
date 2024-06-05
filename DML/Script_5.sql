-- Создать копию таблицы бд

select i."ID",
	   i."FirstName",
	   i."Post",
	   i."Salary"
into table "InvestigatorCopy3" 
from "Investigator" i 
where 1 = 2;