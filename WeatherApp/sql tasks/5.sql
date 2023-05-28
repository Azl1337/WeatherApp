USE shop
 
SELECT FIO, ProductName FROM Products, Managers, Sells 
	WHERE Sells.Manager_Id = Managers.Managers_Id AND Sells.Product_Id = Products.Products_Id AND [Date] BETWEEN '2021-08-22T00:00:00.00' AND '2021-08-22T23:59:59.999'