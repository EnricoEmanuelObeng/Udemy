-- Ranking all records within each group of sales order IDs
SELECT
	[SalesOrderID],
	[SalesOrderDetailID],
	[LineTotal],
	[Ranking] = ROW_NUMBER() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC),
	[HighetsTotal] = FIRST_VALUE([LineTotal]) OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC)
FROM
	[AdventureWorks2022].[Sales].[SalesOrderDetail]
ORDER BY
	[SalesOrderID], [LineTotal] DESC



-- Ranking all records within each group of sales order IDs
SELECT
	[SalesOrderID],
	[SalesOrderDetailID],
	[LineTotal],
	[Ranking] = ROW_NUMBER() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC),
	[LowestTotal] = FIRST_VALUE([LineTotal]) OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal])
FROM
	[AdventureWorks2022].[Sales].[SalesOrderDetail]
ORDER BY
	[SalesOrderID], [LineTotal] DESC



-- Customer orders by date
SELECT
	[CustomerID],
	[OrderDate],
	[TotalDue],
	[FirstOrderAmt] = FIRST_VALUE([TotalDue]) OVER(PARTITION BY [CustomerID] ORDER BY [OrderDate] DESC)
FROM 
	[AdventureWorks2022].[Sales].[SalesOrderHeader]
ORDER BY
	[CustomerID], [OrderDate]







