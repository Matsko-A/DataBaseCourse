-- Создаем таблицу "CrimeArticle"
create table "CrimeArticle"
(
	"ArticleID" serial primary key,
	"ArticleNumber" int not null,
	"Description" varchar(255) not null
)