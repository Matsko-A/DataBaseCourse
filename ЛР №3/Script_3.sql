-- Показать список товаров (поле Name), в котором указан,
-- есть ли у товара полка (поле Shelf) или нет, из таблицы
-- Production.ProductInventory, Production.Product,
-- используя right outer join.
select
	ppi."Shelf",
	p."Name"
from "Production"."ProductInventory" as ppi
	right outer join "Production"."Product" as p
		on ppi."ProductID" = p."ProductID"
order by ppi."Shelf";