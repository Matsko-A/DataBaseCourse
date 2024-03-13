-- Показать суммарную стоимость для товара, чья стоимость
-- меньше 100, в каждой линейке размеров Size из таблицы 
-- Production.Product (из выборки исклчить пустые поля)
select 
	  "Size",
	  sum("StandardCost") as "Total"
from "Production"."Product"
where "Size" is not null
	  and "StandardCost" < '100'
group by "Size";