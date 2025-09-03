-- Exercise 1
SELECT
	PurchaseOrderID,
	OrderDate,
	SubTotal,
	TaxAmt
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A
WHERE EXISTS (
	SELECT
	1
	FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
	WHERE A.PurchaseOrderID = B.PurchaseOrderID
		AND B.OrderQty > 500
)
ORDER BY 1



-- Exercise 2
SELECT
	PurchaseOrderID,
	OrderDate,
	SubTotal,
	TaxAmt
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A
WHERE EXISTS (
	SELECT
	A.*
	FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
	WHERE A.PurchaseOrderID = B.PurchaseOrderID
		AND B.OrderQty > 500 AND B.UnitPrice > 50.00
)
ORDER BY 1



-- Exercise 3
SELECT
	PurchaseOrderID,
	OrderDate,
	SubTotal,
	TaxAmt
FROM
AdventureWorks2022.Purchasing.PurchaseOrderHeader A
WHERE NOT EXISTS (
	SELECT
	A.*
	FROM AdventureWorks2022.Purchasing.PurchaseOrderDetail B
	WHERE A.PurchaseOrderID = B.PurchaseOrderID
		AND B.RejectedQty > 0 
)
ORDER BY 1





























