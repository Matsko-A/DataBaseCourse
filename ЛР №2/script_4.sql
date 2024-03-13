-- Показать среднюю цену товара в каждой линейке продуктов
-- ProductLine из таблицы Production.Product, где средняя
-- цена больше 800 (из выборки исключить пустные поля)
select 
		"ProductLine", 
		avg("ListPrice") as "ListPrice"
from "Production"."Product"
where "ProductLine" is not null
group by "ProductLine"
having avg("ListPrice") > '800';