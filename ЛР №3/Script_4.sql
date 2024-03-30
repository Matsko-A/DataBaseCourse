-- Показать список покупателей (CustomerID), которые имеют
-- несколько дат оформления заказ (OrderDate), из таблицы
-- Sales.SalesOrderHeader, используя self join.
select distinct soh1."CustomerID"
from "Sales"."SalesOrderHeader" soh1
	inner join "Sales"."SalesOrderHeader" soh2
		on soh1."CustomerID" = soh2."CustomerID"
where soh1."OrderDate" <> soh2."OrderDate"
order by "CustomerID";