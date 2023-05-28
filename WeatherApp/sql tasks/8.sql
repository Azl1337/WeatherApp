USE shop

SELECT FIO, COUNT(FIO) AS 'Count' FROM Sells, Managers
	WHERE Sells.Manager_Id = Managers.Managers_Id
	GROUP BY FIO
	HAVING COUNT(FIO) > 1;

SELECT ProductName, COUNT(ProductName) AS 'Count' FROM Sells, Products
	WHERE Sells.Product_Id = Products.Products_Id
	GROUP BY ProductName
	HAVING COUNT(ProductName) > 1;

SELECT [Count], COUNT([Count]) AS 'Count' FROM Sells
	GROUP BY [Count]
	HAVING COUNT([Count]) > 1;

SELECT [Sum], COUNT([Sum]) AS 'Count' FROM Sells
	GROUP BY [Sum]
	HAVING COUNT([Sum]) > 1;

SELECT [Date], COUNT([Date]) AS 'Count' FROM Sells
	GROUP BY [Date]
	HAVING COUNT([Date]) > 1;