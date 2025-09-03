-- Exercise 1
SELECT
	BusinessEntityID,
	JobTitle,
	VacationHours,
	MaxVacationHours = (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee)
FROM
	AdventureWorks2022.HumanResources.Employee



-- Exercise 2
SELECT
	BusinessEntityID,
	JobTitle,
	VacationHours,
	MaxVacationHours = (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee),
	PerVacationHours = ((VacationHours * 1.0) / (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee)) * 100
FROM
	AdventureWorks2022.HumanResources.Employee



-- Exercise 3
SELECT
	BusinessEntityID,
	JobTitle,
	VacationHours,
	MaxVacationHours = (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee),
	PerVacationHours = ((VacationHours * 1.0) / (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee)) * 100
FROM
	AdventureWorks2022.HumanResources.Employee
WHERE
	((VacationHours * 1.0) / (SELECT MAX(VacationHours) FROM AdventureWorks2022.HumanResources.Employee)) * 100 >= 80










