--ѕоказать ID сотрудников (BusinessEntityID), доли продаж (SalesQuota), продажи в этом году (SalesYTD) и 
--продажи в прошлом году (SalesLastYear) из таблицы Sales.SalesPerson. 
--Ќеизвестные доли продаж заменить на 0 и вынести в отдельное поле с названием OtherSalesQuota.
SELECT BusinessEntityID, SalesQuota, SalesYTD, SalesLastYear,
       ISNULL(SalesQuota, 0) AS OtherSalesQuota
FROM Sales.SalesPerson;