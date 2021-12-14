--Показать, кому доставил заказы выбранный курьер.
SELECT P1.FullName AS Courier, P2.FullName AS Customer
FROM Person AS P1 JOIN [Order] AS O1 ON O1.CourierID = P1.PersonID JOIN Person AS P2 ON O1.CustomerID = P2.PersonID
WHERE P1.FullName LIKE 'Дмитриев Павел Владимирович';