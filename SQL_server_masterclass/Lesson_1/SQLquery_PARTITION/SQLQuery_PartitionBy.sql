-- Sum of line totals, grouped by ProducID AND OrderQty, in an aggregate query

SELECT
[ProductID],
[OrderQty],
[LineTotal] = SUM([LineTotal])


FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

GROUP BY
[ProductID],
[OrderQty]

ORDER BY 1,2



-- Sum of line totals via OVER
SELECT
[ProductID],
[SalesOrderID],
[SalesOrderDetailID],
[OrderQty],
[UnitPrice],
[UnitPriceDiscount],
[LineTotal],
ProductIDLineTotal = SUM([LineTotal]) OVER()

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY [ProductID], [OrderQty] DESC



-- Sum of line totals via OVER and PARTITION BY
SELECT
[ProductID],
[SalesOrderID],
[SalesOrderDetailID],
[OrderQty],
[UnitPrice],
[UnitPriceDiscount],
[LineTotal],
ProductIDLineTotal = SUM([LineTotal]) OVER(PARTITION BY [ProductID], [OrderQty])

FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]

ORDER BY [ProductID], [OrderQty] DESC
