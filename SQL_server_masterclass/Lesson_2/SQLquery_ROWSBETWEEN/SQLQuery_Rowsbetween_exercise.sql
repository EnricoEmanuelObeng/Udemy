-- Exercise 1

SELECT
	[OrderMonth],
	[OrderYear],
	[SubTotal],
	[Rolling3MonthTotal] = SUM([SubTotal]) OVER(ORDER BY [OrderMonth], [OrderYear] ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)

FROM
(
	SELECT
		[OrderMonth] = MONTH([OrderDate]),
		[OrderYear] = YEAR ([OrderDate]),
		[SubTotal] = SUM([SubTotal])
	FROM
		[AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]
	GROUP BY
		MONTH([OrderDate]), YEAR ([OrderDate])
) A











































