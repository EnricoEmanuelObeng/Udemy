-- Exercise 1
SELECT
poh.[PurchaseOrderID],
poh.[OrderDate],
poh.[TotalDue],
v.[Name] AS 'VendorName'

FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader] poh
INNER JOIN [AdventureWorks2022].[Purchasing].[Vendor] v ON v.BusinessEntityID = poh.VendorID

WHERE poh.[OrderDate] > '2013'
AND poh.[TotalDue] > 500



-- Exercise 2
SELECT
poh.[PurchaseOrderID],
poh.[OrderDate],
poh.[TotalDue],
v.[Name] AS 'VendorName',
[PrevOderFromVendorAmt] = LAG(poh.[TotalDue]) OVER(ORDER BY poh.[PurchaseOrderID]) 

FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader] poh
INNER JOIN [AdventureWorks2022].[Purchasing].[Vendor] v ON v.BusinessEntityID = poh.VendorID

WHERE poh.[OrderDate] > '2013'
AND poh.[TotalDue] > 500



-- Exercise 3
SELECT
poh.[PurchaseOrderID],
poh.[OrderDate],
poh.[TotalDue],
v.[Name] AS 'VendorName',
[PrevOderFromVendorAmt] = LAG(poh.[TotalDue]) OVER(ORDER BY poh.[PurchaseOrderID]),
[NextOderByEmployeeVendor] = LEAD(v.[Name]) OVER(ORDER BY poh.[PurchaseOrderID])

FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader] poh
INNER JOIN [AdventureWorks2022].[Purchasing].[Vendor] v ON v.BusinessEntityID = poh.VendorID

WHERE poh.[OrderDate] > '2013'
AND poh.[TotalDue] > 500



-- Exercise 4
SELECT
poh.[PurchaseOrderID],
poh.[OrderDate],
poh.[TotalDue],
v.[Name] AS 'VendorName',
[PrevOderFromVendorAmt] = LAG(poh.[TotalDue]) OVER(ORDER BY poh.[PurchaseOrderID]),
[NextOderByEmployeeVendor] = LEAD(v.[Name]) OVER(ORDER BY poh.[PurchaseOrderID]),
[Next2OderByEmployeeVendor] = LEAD(v.[Name]) OVER(PARTITION BY poh.[EmployeeID] ORDER BY poh.[PurchaseOrderID])

FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader] poh
INNER JOIN [AdventureWorks2022].[Purchasing].[Vendor] v ON v.BusinessEntityID = poh.VendorID

WHERE poh.[OrderDate] > '2013'
AND poh.[TotalDue] > 500





