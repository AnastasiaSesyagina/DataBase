--Показать, какие пиццы заказали клиенты.
SELECT Per.FullName, Pr.MenuName
FROM Person AS Per JOIN [Order] ON Per.PersonID = [Order].CustomerID JOIN OrderProduct ON [Order].OrderID = OrderProduct.OrderID 
JOIN Product AS Pr ON OrderProduct.ProductID = Pr.ProductID
WHERE Pr.MenuName LIKE 'Пицца%';