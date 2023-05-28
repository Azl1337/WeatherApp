USE shop 

SELECT FIO, ProductName, Sum([Sum]) sum_s FROM Sells, Products, Managers 
	WHERE Sells.Manager_Id = Managers.Managers_Id AND Sells.Product_Id = Products.Products_Id AND Products.ProductName = '���'
	GROUP BY FIO, ProductName
	ORDER BY sum_s DESC -- ������������ ASC/DESC ��� ���������� � ������� �����������/��������