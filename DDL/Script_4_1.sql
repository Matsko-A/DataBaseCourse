-- Написать скрипты на добавление ограничения NOT NULL для тех полей,
-- где это необходимо (файл 1)

alter table "CriminalCase"
alter column "ID"
set not null;