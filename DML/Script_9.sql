-- Удалить дубликаты

delete
from "InvestigatorCopy4" 
where ctid not in
 (select max(ctid) from "InvestigatorCopy4"
 group by "InvestigatorCopy4"."ID");
