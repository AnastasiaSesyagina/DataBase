--Показать, какие пиццы заказали клиенты.
CREATE VIEW vOrderedPizza AS
SELECT Per.FullName, Pr.MenuName
FROM Person AS Per JOIN [Order] ON Per.ID = [Order].ID_Customer JOIN OrderProduct ON [Order].ID = OrderProduct.ID_Order 
JOIN Product AS Pr ON OrderProduct.ID_Product = Pr.ID
WHERE Pr.MenuName LIKE 'Пицца%';

SELECT *
FROM vOrderedPizza;