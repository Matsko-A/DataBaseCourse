-- Создаем таблицу связей "InvestgatorCase"
create table "InvestigatorCase"
(
	"InvestigatorCaseID" serial primary key,
	"InvestigatorID" serial,
	"CaseID" serial,
	foreign key ("InvestigatorID") references "Investigator"("InvestigatorID"),
	foreign key ("CaseID") references "Case"("CaseID")
)