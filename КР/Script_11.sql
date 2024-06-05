-- Делаем поле "Description" уникальным
alter table "CrimeArticle"
add constraint UQ_Description unique ("Description")