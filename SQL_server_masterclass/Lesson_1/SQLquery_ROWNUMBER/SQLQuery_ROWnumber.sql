-- Sum of line totals by sales order ID


-- Via Window Function
SELECT
[SalesOrderID],
[SalesOrderDetailID],
[LineTotal],
SalesOrderIDLineTotal = SUM([LineTotal]) OVER(PARTITION BY SalesOrderID)

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY SalesOrderID



-- Via Aggregate Query
SELECT
[SalesOrderID],
[LineTotal] = SUM([LineTotal])

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]


-- Ranking all records within each group of sales order IDs
SELECT
[SalesOrderID],
[SalesOrderDetailID],
[LineTotal],
SalesOrderIDLineTotal = SUM([LineTotal]) OVER(PARTITION BY SalesOrderID),
Ranking = ROW_NUMBER() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC)

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY [SalesOrderID]


-- Ranking all records within each group of sales order IDs
SELECT
[SalesOrderID],
[SalesOrderDetailID],
[LineTotal],
SalesOrderIDLineTotal = SUM([LineTotal]) OVER(PARTITION BY SalesOrderID),
Raanking = ROW_NUMBER() OVER(ORDER BY [LineTotal] DESC)

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY 5























