--Показать товары, цена которых равна максимальной (больше нуля) цене товара того же веса (вес определен) (Таблица Production.Product). 
--Показать поля [Name], ListPrice и [Weight].
SELECT [Name], ListPrice, [Weight]
FROM Production.Product AS P
WHERE [Weight] IS NOT NULL AND ListPrice =  
	 (
	 SELECT MAX(ListPrice)
	  FROM Production.Product AS PP
	  WHERE ListPrice > 0 AND P.[Weight] = PP.[Weight]
	  )
GROUP BY [Name], ListPrice, [Weight]
ORDER BY [Weight];
