--Показать список товаров из таблицы Production.Product, 
--которые имеют такой же размер как у товара с названием Mountain Bike Socks, M, используя SELF JOIN.
SELECT DISTINCT
	P2.[Name], P2.Size
FROM Production.Product AS P1
INNER JOIN Production.Product AS P2
ON (P1.Size = P2.Size) AND P1.[Name] = 'Mountain Bike Socks, M';