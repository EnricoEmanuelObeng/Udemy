-- 1) All rows
SELECT
*
FROM
[AdventureWorks2022].[Sales].[SalesOrderHeader]



-- 2) Count of all rows
SELECT
SUM([TotalDue])
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]



-- 3) Adding new fields to aggregate
SELECT
TotalSales = SUM([TotalDue]),
SalesPersonID

FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]

GROUP BY
SalesPersonID



-- 4) Sales Person YTD sales
SELECT
	[BusinessEntityID],
	[TerritoryID],
	[SalesQuota],
	[Bonus],
	[CommissionPct],
	[SalesYTD],
	[SalesLastYear],
	[Total YTD Sales] = SUM(SalesYTD) OVER(),
	[Max YTD Sales] = MAX([SalesYTD]) OVER(),
	[% of Best Performer] = [SalesYTD]/MAX([SalesYTD]) OVER()


FROM [AdventureWorks2022].[Sales].[SalesPerson]

