-- Показать поля ProductID, Name из таблицы Production.Product с применением
-- функции coalesce.
-- Показать поле Measurement, так, чтобы, если значение в поле Style известно,
-- то показать его, а иначе, показать значение в поле Weight. Если и в поле
-- Weight значение неизвестно, то вывести значение "" 
select 
	"ProductID",
	"Name",
	coalesce("Style",
	cast("Weight" as varchar(10)),
	'unknown') as Meauserement
from "Production"."Product";