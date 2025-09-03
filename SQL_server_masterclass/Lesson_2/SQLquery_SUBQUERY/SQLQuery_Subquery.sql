SELECT
	*
FROM

(
SELECT
	[SalesOrderID],
	[SalesOrderDetailID],
	[LineTotal],
	[LineTotalRanking] = ROW_NUMBER() OVER(PARTITION BY [SalesOrderID] ORDER BY [LineTotal] DESC)
FROM
	[AdventureWorks2022].[Sales].[SalesOrderDetail]
) A

WHERE [LineTotalRanking] = 1






