--Показать стоимость заказа выбранного клиента.
SELECT Per.FullName AS Customer, SUM(Pr.Price) AS TotalPrice
FROM Person AS Per JOIN [Order] AS O ON Per.PersonID = O.CustomerID JOIN OrderProduct AS OP ON O.OrderID = OP.OrderID 
JOIN Product AS Pr ON OP.ProductID = Pr.ProductID
WHERE Per.FullName LIKE 'Сальникова Кира Вадимовна'
GROUP BY Per.FullName;