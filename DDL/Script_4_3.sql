-- Написать скрипты на добавление ограничения NOT NULL для тех полей,
-- где это необходимо (файл 3)

alter table "CriminalCase"
alter column "ID_Criminal"
set not null;