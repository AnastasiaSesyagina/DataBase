--Показать список продуктов (поле Name) в котором указано, есть ли у продукта единицы измерения размера или нет, 
--из таблиц Production.Product, Production.UnitMeasure, используя LEFT OUTER JOIN.
SELECT P.[Name], M.[Name] AS UnitMeasureName
FROM Production.Product AS P
LEFT OUTER JOIN Production.UnitMeasure AS M
ON P.SizeUnitMeasureCode = M.UnitMeasureCode;