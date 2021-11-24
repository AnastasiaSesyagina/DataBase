--Вывести ProductID, где минимальная цена (StandardCost) меньше 1 из таблицы Production.ProductCostHistory. Добавить столбец с номером строки, 
--определяя его порядок в зависимости от минимальной цены.
SELECT ROW_NUMBER() OVER (ORDER BY MIN(StandardCost)) AS Number, ProductID, MIN(StandardCost) AS MinStandardCost
FROM Production.ProductCostHistory
GROUP BY ProductID
HAVING MIN(StandardCost) < 1;