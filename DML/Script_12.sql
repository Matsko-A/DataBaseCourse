-- скрипт, который показывает работу с оператором MERGE

merge into "InvestigatorCopy4" as Target
using "Investigator" as Source
	on (Target."ID" = Source."ID")
when matched
	then update
		set 
			"ID" = Source."ID",
			"FirstName" = Source."FirstName",
			"Post" = Source."Post",
			"Salary" = Source."Salary"
when not matched
	then insert
		values (Source."ID", 
				Source."FirstName", 
				Source."Post", 
				Source."Salary");