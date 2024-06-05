-- Создание таблицы "Convict"
create table "Convict"
(
	"ConvictID" serial primary key,
	"FirstName" varchar(25) not null,
	"LastName" varchar(25) not null
)