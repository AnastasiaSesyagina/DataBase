--Показать товар с самой маленькой разницей между ценой и стандартной ценой (все цены больше нуля) (Таблица Production.Product). 
--Вывести поля StandardCost, ListPrice, [Name].
SELECT [Name], StandardCost, ListPrice
FROM Production.Product
GROUP BY [Name], StandardCost, ListPrice
HAVING ListPrice - StandardCost =  
	 (
	 SELECT MIN(ListPrice - StandardCost)
	  FROM Production.Product
	  WHERE ListPrice > 0 AND StandardCost > 0
	  );

--Проверка минимальной разницы между ценой и стандартной ценой
SELECT MIN(ListPrice - StandardCost) AS [MinDiff]
FROM Production.Product
WHERE ListPrice > 0 AND StandardCost > 0;
