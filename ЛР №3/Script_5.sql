-- Показать списко дат оформления заказа (OrderDate), которые
-- относятся к нескольким покупателся (CustomerID), из таблицы
-- Sales.SalesOrderHeader, используя self join.
select distinct soh1."OrderDate"
from "Sales"."SalesOrderHeader" soh1
	inner join "Sales"."SalesOrderHeader" soh2
		on soh1."OrderDate" = soh2."OrderDate"
where soh1."CustomerID" <> soh2."CustomerID"
order by "OrderDate";