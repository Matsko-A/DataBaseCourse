-- Создаем таблицу "Investigator"
create table "Investigator"
(
	"InvestigatorID" serial primary key,
	"FirstName" varchar(25) not null,
	"LastName" varchar(25) not null
)