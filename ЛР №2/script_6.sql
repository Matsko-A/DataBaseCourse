-- Изменить запрос п.5 использовать cube. Отделить строки, созданные с
-- помощью агрегатных функций от строк из фактической таблицы.
select
		"DepartmentID",
		"ShiftID", 
		count ("BusinessEntityID") as "BusinessEntityID"
from "HumanResources"."EmployeeDepartmentHistory"
group by cube("DepartmentID", "ShiftID");