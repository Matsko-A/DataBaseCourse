-- Создаем таблицу связей "ConvictCase"
create table "ConvictCase"
(
	"ConvictCaseID" serial primary key,
	"ConvictID" serial,
	"CaseID" serial,
	foreign key ("ConvictID") references "Convict"("ConvictID"),
	foreign key ("CaseID") references "Case"("CaseID")
)