-- Показать дни рождения (BirthDate) и поля PersonType,
-- FirstName, LastName из таблицы Person.Person, 
-- HumanResources.Employee.
select 
	e."BirthDate",
	p."PersonType",
	p."FirstName",
	p."LastName"
from  "HumanResources"."Employee" as e
	inner join "Person"."Person" as p
		on e."BusinessEntityID" = p."BusinessEntityID"; 