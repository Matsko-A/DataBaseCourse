-- Ограничить результирующий набор, полученный в п.8.
select p."ProductID"
from "Production"."Product" p 
intersect
select pd."ProductID"
from "Production"."ProductDocument" pd
limit 20;