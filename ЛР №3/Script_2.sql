-- Показать список продуктов (поле Name), в котором указано,
-- есть ли у продукта количество заказов или нет, из таблиц
-- Production.Product, Sales.SalesOrderDetail,
-- используя left outer join.
select
	p."Name",
	s."OrderQty"
from "Production"."Product" as p
	left outer join "Sales"."SalesOrderDetail" as s
		on p."ProductID" = s."ProductID"
order by p."Name";