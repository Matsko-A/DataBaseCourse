-- Делаем поле "CaseNumber" уникальным
alter table "Case"
add constraint UQ_Case_Number unique ("CaseNumber")