-- Показать поля TransactionID, ProductID, ReferenceOrderID, TransactionType,
-- Quantity, ActualCost из таблицы Production.TransactionHistory. Показать
-- только значения поля TransactionType из списка 'W', 'P'.
-- Использовать оператор IN.
select
	"TransactionID",
	"ProductID",
	"ReferenceOrderID",
	"TransactionType",
	"Quantity",
	"ActualCost"
from "Production"."TransactionHistory"
where "TransactionType" in ('W', 'P');