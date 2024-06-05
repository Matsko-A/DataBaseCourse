-- Делаем поле "Description" уникальным
alter table "Case"
add constraint UQ_Case_Description unique ("Description")