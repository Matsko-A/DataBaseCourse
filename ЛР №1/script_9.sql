-- Показать поля TransactionID, ProductID, ReferenceOrderID, TransactionType,
-- Quantity, ActualCost из таблицы Production.TransactionHistory, где значения
-- поля Quantity больше 4. Отсортировать строки в алфавитном порядке относительно
-- поля ActualCost.
select 
		"TransactionID",
		"ProductID",
		"ReferenceOrderID",
		"TransactionType",
		"Quantity",
		"ActualCost" 
from "Production"."TransactionHistory"
where "Quantity" > 4
order by "ActualCost"  desc;