-- Создать копию таблицы с выбранными полями.

select cc."ID",
	   cc."Date"
into table  "CriminalCaseCopy" 
from "CriminalCase" cc; 