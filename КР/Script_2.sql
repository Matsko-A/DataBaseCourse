-- Создание таблицы "Case"
create table "Case"
(
	"CaseID" serial primary key,
	"CaseNumber" int not null,
	"Description" varchar(255) not null
)