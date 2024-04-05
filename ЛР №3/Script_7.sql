-- Показать комбинированный списко таблиц Production.Product
-- Production.ProductSubcategory по полям Name,
-- ProductSubcategoryID, используя union.
select p."Name", 
	   p."ProductSubcategoryID"
from "Production"."Product" p
union
select ps."Name", 
       ps."ProductSubcategoryID"
from "Production"."ProductSubcategory" ps; 