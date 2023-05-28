USE shop 


--Вариант 1 (упрощенный)
--SELECT AVG([Sum]) AS "Среднее значение" FROM Sells WHERE Product_Id = 11


--Вариант 2 (более точный)
SELECT AVG([Sum]) AS "Среднее значение" FROM Sells AS T1
     INNER JOIN Products AS T2 
	 ON T1.Product_Id = T2.Products_Id WHERE ProductName LIKE 'Фанера'