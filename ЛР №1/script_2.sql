-- Показать поля TransactionID, ProductID, TransactionType,
-- Quantity, ActualCost из таблицы Production.TransactionHistoryArchive.
select 
	"TransactionID",
	"ProductID",
	"TransactionType",
	"Quantity",
	"ActualCost"
from "Production"."TransactionHistoryArchive";