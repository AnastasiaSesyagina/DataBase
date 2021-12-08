--Показать список продуктов (Name) и название их подкатегорий, из таблиц Production.Product, Production.ProductSubcategory.
SELECT P.[Name], S.[Name] AS Subcategory
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS S
ON P.ProductSubcategoryID = S.ProductSubcategoryID;