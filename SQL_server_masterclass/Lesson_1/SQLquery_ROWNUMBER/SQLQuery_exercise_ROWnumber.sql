-- Exercise 2
SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
psc.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[Price Rank] = ROW_NUMBER() OVER(ORDER BY[ListPrice] DESC)

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = psc.ProductSubcategoryID



-- Exercise 3
SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
psc.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[Price Rank] = ROW_NUMBER() OVER(ORDER BY[ListPrice] DESC),
[Category Price Rank] = ROW_NUMBER() OVER(PARTITION BY pc.[Name] ORDER BY[ListPrice] DESC)

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = psc.ProductSubcategoryID



-- Exercise 4
SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
psc.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[Price Rank] = ROW_NUMBER() OVER(ORDER BY[ListPrice] DESC),
[Category Price Rank] = ROW_NUMBER() OVER(PARTITION BY pc.[Name] ORDER BY[ListPrice] DESC),
[TOP 5 Price In Category] = CASE 
								WHEN ROW_NUMBER() OVER(PARTITION BY pc.[Name] ORDER BY[ListPrice] DESC) <= 5 THEN 'YES'
								ELSE 'NO' 
							END

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = psc.ProductSubcategoryID
































