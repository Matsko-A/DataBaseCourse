-- Написать скрипты на установку значений по умолчанию
-- для тех полей, где это необходимо

alter table "Investigator" 
alter column "Salary"
set default 15000;