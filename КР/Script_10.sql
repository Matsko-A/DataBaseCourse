-- Делаем поле "ArticleNumber" уникальным
alter table "CrimeArticle"
add constraint UQ_Article_Number unique ("ArticleNumber")