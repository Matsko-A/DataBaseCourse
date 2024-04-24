-- Написать скрипты на добавление ограничения NOT NULL для тех полей,
-- где это необходимо (файл 2)

alter table "CriminalCase"
alter column "ID_Investigator"
set not null;
