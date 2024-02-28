-- Из таблицы HumanResources.Department показать поля DepartmentID,
-- Name, GroupName. Все значения поля Name равные 'Finance' заменить на NULL,
-- а затем все NULL этого же поля заменить на 'Other'. Получившиеся поле
-- вынести отдельно и назвать OtherName.
select
	"DepartmentID",
	"Name",
	coalesce(nullif("Name", 'Finance'), 'Other') as
		"OtherName",
	"GroupName" 
from "HumanResources"."Department";