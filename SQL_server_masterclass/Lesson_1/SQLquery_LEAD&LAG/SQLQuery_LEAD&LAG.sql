SELECT
[SalesOrderID],
[OrderDate],
[CustomerID],
[TotalDue]

FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]

ORDER BY [SalesOrderID]


-- USE LEAD to compare next values on the same row
SELECT
[SalesOrderID],
[OrderDate],
[CustomerID],
[TotalDue],
[NextTotalDue] = LEAD([TotalDue],1) OVER(ORDER BY [SalesOrderID])

FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]

ORDER BY [SalesOrderID]


-- USE LAG to compare previous values on the same row
SELECT
[SalesOrderID],
[OrderDate],
[CustomerID],
[TotalDue],
[NextTotalDue] = LAG([TotalDue],1) OVER(ORDER BY [SalesOrderID])

FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]

ORDER BY [SalesOrderID]



-- USE LEAD and LAG to compare next values on the same row
SELECT
[SalesOrderID],
[OrderDate],
[CustomerID],
[TotalDue],
[NextTotalDue] = LEAD([TotalDue],1) OVER(PARTITION BY [CustomerID] ORDER BY [SalesOrderID]),
[PrevTotalDue] = LAG([TotalDue],1) OVER(PARTITION BY [CustomerID] ORDER BY [SalesOrderID])

FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]

ORDER BY [CustomerID], [SalesOrderID]

