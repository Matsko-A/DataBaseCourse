-- Создаем таблицу связей "CrimeArticleCase"
create table "CrimeArticleCase"
(
	"CrimeArticleCase" serial primary key,
	"ArticleID" serial,
	"CaseID" serial,
	foreign key ("ArticleID") references "CrimeArticle"("ArticleID"),
	foreign key ("CaseID") references "Case"("CaseID")
)