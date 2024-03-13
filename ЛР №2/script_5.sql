-- Показать количество сотрудников (BusinessEntityID) из таблицы
-- HumanResources.EmployeeDepartmentHistory для каждого отдела
-- DepartmentID и номера отдела DepartmentID. (Использовать rollup)
select
		"DepartmentID",
		"ShiftID", 
		count ("BusinessEntityID") as "BusinessEntityID"
from "HumanResources"."EmployeeDepartmentHistory"
group by rollup ("DepartmentID", "ShiftID");