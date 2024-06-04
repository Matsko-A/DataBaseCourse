-- Показать ФИО самого пожилого сотрудника
-- (Таблицы HumanResources.Employee и Person.Person).
-- Показать поля FirstName, MiddleName, LastName.
select
	p."FirstName",
	p."MiddleName",
	p."LastName",
	age (current_date, e."BirthDate") as age
from "Person"."Person" as p
inner join "HumanResources"."Employee" as e
on p."BusinessEntityID" = e."BusinessEntityID" 
where e."BirthDate" =
	(
		select min("BirthDate")
		from "HumanResources"."Employee"
	);