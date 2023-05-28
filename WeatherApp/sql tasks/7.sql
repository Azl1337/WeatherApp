USE shop

SELECT Sum(Sells_Id) Sells_Id, FIO, ProductName, Sum([Count]) 'Count', Sum([Sum]) 'Sum', DATEPART(MONTH,[Date]) 'Sell date' FROM Sells, Products, Managers
	WHERE Products.Products_Id = Sells.Product_Id AND Managers.Managers_Id = Sells.Manager_Id
	GROUP BY DATEPART(MONTH,[Date]), ProductName,  FIO