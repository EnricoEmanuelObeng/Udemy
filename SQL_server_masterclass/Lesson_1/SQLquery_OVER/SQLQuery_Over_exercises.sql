-- 1) Exercise 1
SELECT
p.[FirstName],
p.[LastName],
e.[JobTitle],
eph.[Rate],
[AverageRate] = AVG([Rate]) OVER(),
[MaximumRate] = MAX([Rate]) OVER(),
[DiffFromAvgRate] = [Rate] - AVG([Rate]) OVER(),
[PercentofMaxRate] = ([Rate] / MAX([Rate]) OVER()) * 100

FROM [AdventureWorks2022].[HumanResources].[EmployeePayHistory] eph
INNER JOIN [AdventureWorks2022].[Person].[Person] p ON eph.BusinessEntityID = p.BusinessEntityID
INNER JOIN [AdventureWorks2022].[HumanResources].[Employee] e ON e.BusinessEntityID = p.BusinessEntityID