-- Exercise 1
SELECT
	PurchaseOrderID,
	VendorID,
	OrderDate,
	TotalDue,
	NonRecjectedItems = (
		  SELECT
		  COUNT(*)
		  FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
		  WHERE A.PurchaseOrderID = B.PurchaseOrderID
		  AND B.RejectedQty = 0
	  )
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A



-- Exercise 2
SELECT
	PurchaseOrderID,
	VendorID,
	OrderDate,
	TotalDue,
	NonRecjectedItems = (
		  SELECT
		  COUNT(*)
		  FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
		  WHERE A.PurchaseOrderID = B.PurchaseOrderID
		  AND B.RejectedQty = 0
	  ),
	  MostExpensiveItem = (
		  SELECT
		  SUM(UnitPrice)
		  FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
		  WHERE A.PurchaseOrderID = B.PurchaseOrderID
		  AND B.RejectedQty = 0
	  )
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A



-- Exercise 2
SELECT
	PurchaseOrderID,
	VendorID,
	OrderDate,
	TotalDue,
	NonRecjectedItems = (
		  SELECT
		  COUNT(*)
		  FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
		  WHERE A.PurchaseOrderID = B.PurchaseOrderID
		  AND B.RejectedQty = 0
	  ),
	  MostExpensiveItem = (
		  SELECT
		  SUM(UnitPrice)
		  FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
		  WHERE A.PurchaseOrderID = B.PurchaseOrderID
		  AND B.RejectedQty = 0
	  )
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A


































