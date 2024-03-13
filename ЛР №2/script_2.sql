-- Вывести данные о работниках, которые страше 50 лет 
-- из таблицы HumanResources.Employee.
select *
from "HumanResources"."Employee"
where date_part('year', age(current_date, "BirthDate")) > '50'; 