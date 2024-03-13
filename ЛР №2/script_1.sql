--Найти количество разнообразных должностей из таблицы HumanResources.Employee
select count (distinct "JobTitle") as "JobTitle"
from "HumanResources"."Employee";