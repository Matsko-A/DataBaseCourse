-- Написать скрипты на добавления первичных ключей

alter table "Investigator" 
add constraint "PK_Investigator"
primary key ("ID");