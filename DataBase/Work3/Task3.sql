--Показать названия моделей (поле Name) в котором указано, есть ли продукты данной модели или нет, 
--из таблиц Production.ProductModel, Production.Product, используя RIGHT OUTER JOIN.
SELECT M.[Name], P.FinishedGoodsFlag 
FROM Production.Product AS P
RIGHT OUTER JOIN Production.ProductModel AS M
ON P.ProductModelID = M.ProductModelID;