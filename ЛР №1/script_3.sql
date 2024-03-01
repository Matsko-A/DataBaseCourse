-- Показать поля ProductId, UnitPrice, LineTotal, ReceivedQty,
-- RejectedQty и OrderQty из таблицы Purchasing.PurchaseOrderDetail,
-- где количество, фактически полученное от продавца ReceivedQty больше
-- 60, а количество, отклонение, во время проверки RejectedQty, находится 
-- в диапазоне от 50 до 80.
select 
	"ProductID",
	"UnitPrice",
	"LineTotal",
	"ReceivedQty",
	"RejectedQty",
	"OrderQty"
from "Purchasing"."PurchaseOrderDetail"
where ("RejectedQty" between '50' and '80') and "ReceivedQty" > '60';