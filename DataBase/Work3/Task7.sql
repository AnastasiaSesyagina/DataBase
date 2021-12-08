--Показать комбинированный список таблиц Production.Product по полям ProductID, ListPrice, 
--Purchasing.ProductVendor по полям ProductID, StandardPrice, используя UNION.
SELECT ProductID, ListPrice AS Price
FROM Production.Product
UNION
SELECT ProductID, StandardPrice AS Price
FROM Purchasing.ProductVendor;