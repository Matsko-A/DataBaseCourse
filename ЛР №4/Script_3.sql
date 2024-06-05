-- Показать товары, цена которых равна максимальной 
-- цене товара того же веса (вес определен). Показать
-- поля Name, ListPrice и Weight.
select
	p."Name",
	p."ListPrice",
	p."Weight"
from "Production"."Product" p 
where p."ListPrice" =
	(
		select max(p2."ListPrice") 
		from "Production"."Product" p2
		where p."Weight" = p2."Weight"
	);