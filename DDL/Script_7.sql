-- Написать скрипты на добавление ограничения уникальности
-- для тех полей, где это необходимо.

alter table "CriminalCase" 
add constraint "U_Criminal_Case"
unique ("Content");