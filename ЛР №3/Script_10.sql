-- Пропустить 15 строк из результирующего набора, полученного в п.9.
select p."ProductID"
from "Production"."Product" p 
intersect
select pd."ProductID"
from "Production"."ProductDocument" pd
limit 20
offset 15;