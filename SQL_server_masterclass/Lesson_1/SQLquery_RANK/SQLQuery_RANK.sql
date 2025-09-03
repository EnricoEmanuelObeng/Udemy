-- Ranking all records within each group of sales order IDs
SELECT
[SalesOrderID],
[SalesOrderDetailID],
[LineTotal],
[Ranking] = ROW_NUMBER() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC),
[RankingWithRank] = RANK() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC),
[RankingWithDense_Rank] = DENSE_RANK() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC)

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY [SalesOrderID], [LineTotal] DESC






































