USE shop 


--������� 1 (����������)
--SELECT AVG([Sum]) AS "������� ��������" FROM Sells WHERE Product_Id = 11


--������� 2 (����� ������)
SELECT AVG([Sum]) AS "������� ��������" FROM Sells AS T1
     INNER JOIN Products AS T2 
	 ON T1.Product_Id = T2.Products_Id WHERE ProductName LIKE '������'