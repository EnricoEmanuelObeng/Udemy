-- Exercise 1

SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
ps.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory'

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] ps ON ps.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = ps.ProductSubcategoryID



-- Exercise 2

SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
ps.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[AvgPriceByCategory] = AVG([ListPrice]) OVER()

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] ps ON ps.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = ps.ProductSubcategoryID



-- Exercise 3

SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
psc.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[AvgPriceByCategory] = AVG([ListPrice]) OVER(),
[AvgPriceByCategoryAndSubcategory] = AVG([ListPrice]) OVER(PARTITION BY pc.[Name], psc.[Name])

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = psc.ProductSubcategoryID



-- Exercise 4

SELECT
p.[Name] AS 'ProductName',
p.[ListPrice],
psc.[Name] AS 'ProductSubcategory',
pc.[Name] AS 'ProductCategory',
[AvgPriceByCategory] = AVG([ListPrice]) OVER(),
[AvgPriceByCategoryAndSubcategory] = AVG([ListPrice]) OVER(PARTITION BY pc.[Name], psc.[Name]),
[ProductVsCategoryDelta] = [ListPrice] - AVG([ListPrice]) OVER(PARTITION BY pc.[Name])

FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
INNER JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON pc.ProductCategoryID = psc.ProductSubcategoryID

