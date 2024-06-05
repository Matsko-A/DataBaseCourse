-- Сформировать таблицу, которая имеет дубликаты строк.

insert into "InvestigatorCopy4"
	("ID",
	 "FirstName",
	 "Post",
	 "Salary") values
	(1, 'Alex', 'Lt', 70000),
	(2, 'Sam', 'Lt', 70000),
	(3, 'Tom', 'Captain', 150000);