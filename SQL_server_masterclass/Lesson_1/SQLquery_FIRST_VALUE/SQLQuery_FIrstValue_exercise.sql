-- Exercise 1

SELECT
	-- *,
	[BusinessEntityID] AS 'EmployeeID',
	[JobTitle],
	[HireDate],
	[VacationHours],
	[FirstHireVacationHours] = FIRST_VALUE([VacationHours]) OVER(PARTITION BY [JobTitle] ORDER BY [VacationHours] DESC)
FROM
	[AdventureWorks2022].[HumanResources].[Employee]
ORDER BY
	[JobTitle], [HireDate]