-- Написать скрипты на добавление внешнего ключа

alter table "CriminalCase" 
add constraint "FK_Criminal_Case"
foreign key ("ID_Investigator")
references "Investigator" ("ID");