--Показать товары, цена которых больше средней цены в любом цвете (цены больше нуля) (Таблица Production.Product). Показать поля [Name], ListPrice и Color.
SELECT [Name], ListPrice, Color
FROM Production.Product
GROUP BY [Name], ListPrice, Color
HAVING ListPrice > ALL  
	 (
	 SELECT AVG(ListPrice)
	  FROM Production.Product
	  WHERE StandardCost > 0
	  )
ORDER BY ListPrice;

--Проверка средней цены товаров
SELECT AVG(ListPrice) as AvgPrice
FROM Production.Product
WHERE ListPrice > 0;