-- Ранжирование товаров по увеличению их стандартной стоимости(StandardCost).
-- ("Production"."Product"). Примечание к ранжированию - ранг
-- может начинаться с произвольного числа (например, 2 или 5),
-- главное - ранг не должен уменьшаться
select
	p."ProductID",
	p."StandardCost",
	(
		select count(*)
		from "Production"."Product" p2 
		where p2."StandardCost" <= p."StandardCost"
	) as "Range"
from "Production"."Product" p 
order by "Range";