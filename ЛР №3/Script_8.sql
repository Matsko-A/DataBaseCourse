-- Показать список ProductID, которые содержатся и в таблице
-- Production.Product, и в таблице Production.ProductDocument.
select p."ProductID"
from "Production"."Product" p 
intersect
select pd."ProductID"
from "Production"."ProductDocument" pd 