-- Вывести данные о работниках, которые страше 50 лет 
-- из таблицы HumanResources.Employee.
select 
	"BusinessEntityID",
	"NationalIDNumber",
	"LoginID",
	"OrganizationLevel",
	"JobTitle",
	"BirthDate",
	"MaritalStatus",
	"Gender",
	"HireDate",
	"VacationHours",
	"SickLeaveHours",
	"rowguid",
	"ModifiedDate",
	"SalariedFlag",
	"CurrentFlag",
	"OrganizationNode" 
from "HumanResources"."Employee"
where date_part('year', age(current_date, "BirthDate")) > '50'; 