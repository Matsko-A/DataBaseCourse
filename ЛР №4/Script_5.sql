-- Показать товары, цена которых меньше средней 
-- цены товара того же цвета (Цвет определен)
-- (Таблица Production.Product). Показать
-- поля Name, ListPrice и Color.

select
	p."Name",
	p."ListPrice",
	p."Color"
from "Production"."Product" p
where p."Color" = 'Red'
	and p."ListPrice" < any
		(
			select avg(p2."ListPrice") as "AvgListPrice"
			from "Production"."Product" p2
			where p2."ListPrice" > 0
				and p2."Color" = p."Color"
			group by p2."Color"
		)
order by p."ListPrice"; 