-- Написать скрипты на добавление ограничения NOT NULL для тех полей,
-- где это необходимо (файл 5)

alter table "Investigator" 
alter column "ID"
set not null;