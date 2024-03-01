-- Показать место документа в памяти DocumentNode, заголовок документы 
-- Title и расширение файла FileExtension из таблицы Production.Document,
-- Если значение поля Title содержат слово 'Assembly'.
select
	"DocumentNode",
	"Title",
	"FileExtension"
from "Production"."Document"
where "Title" like '%Assembly';