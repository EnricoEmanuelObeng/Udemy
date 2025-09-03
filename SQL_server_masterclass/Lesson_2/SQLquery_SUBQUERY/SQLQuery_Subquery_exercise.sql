-- Exercise 1

SELECT 
*
FROM
(
SELECT
	[PurchaseOrderID],
	[VendorID],
	[OrderDate],
	[TaxAmt],
	[Freight],
	[TotalDue],
	[Most expensive] = ROW_NUMBER() OVER(PARTITION BY [VendorID] ORDER BY [TotalDue] DESC)
FROM
	[AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]
) A
WHERE
	[Most expensive] <= 3



-- Exercise 2

SELECT 
*
FROM
(
SELECT
	[PurchaseOrderID],
	[VendorID],
	[OrderDate],
	[TaxAmt],
	[Freight],
	[TotalDue],
	[Most expensive] = DENSE_RANK() OVER(PARTITION BY [VendorID] ORDER BY [TotalDue] DESC)
FROM
	[AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]
) A
WHERE
	[Most expensive] <= 3






