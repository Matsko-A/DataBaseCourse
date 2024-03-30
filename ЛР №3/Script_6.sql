-- Показать списко продавцов (SalesPersonID из Sales.SalesOrderHeader),
-- которые имеют нескольких покупателей, CustomerID которых начинается с 3,
-- используя self join.
select distinct soh1."SalesPersonID"
from "Sales"."SalesOrderHeader" soh1
	inner join "Sales"."SalesOrderHeader" soh2 
		on soh1."SalesPersonID" = soh2."SalesPersonID"
where soh1."CustomerID" <> soh2."CustomerID"
		and cast(soh1."CustomerID" as varchar(54)) like '3%'
order by soh1."SalesPersonID";