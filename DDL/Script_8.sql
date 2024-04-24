-- Написать скрипты на добавление гораничения проверок
-- check для тех полей, где это необходимо

alter table "Investigator" 
add constraint "CH_Investigator"
check ("Salary" > 0);