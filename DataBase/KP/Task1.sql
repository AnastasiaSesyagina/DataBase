--Показать содержимое выбранного заказа.
SELECT O.OrderID, P.MenuName
FROM [Order] AS O JOIN OrderProduct ON O.OrderID = OrderProduct.OrderID JOIN Product AS P ON OrderProduct.ProductID = P.ProductID
WHERE O.OrderID = 9;