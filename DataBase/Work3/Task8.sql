--Показать список ID, которые содержатся и в таблице Sales.Store (поле BusinessEntityID), 
--и в таблице Sales.Customer (поле CustomerID).
SELECT BusinessEntityID AS ID
FROM Sales.Store
INTERSECT
SELECT CustomerID
FROM Sales.Customer
ORDER BY ID;