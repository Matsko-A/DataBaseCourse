-- Из таблицы Production.Document показать место документа в
-- памяти DocumentNode, уровень документа DocumentLevel, 
-- заголовок документа Title и итоговый документ DocumentSummary.
-- Показать только те документы, которые не имеют итогового документа.
select 
	"DocumentNode",
	"DocumentLevel",
	"Title",
	"DocumentSummary"
from "Production"."Document"
where "DocumentSummary" is null;