--Показать, кто успел сделать заказ до полудня (открытие в 8:00).
SELECT Per.FullName, O.GetTime
FROM Person AS Per JOIN [Order] AS O ON Per.PersonID = O.CustomerID
WHERE O.GetTime LIKE '08:%' OR O.GetTime LIKE '09:%' OR O.GetTime LIKE '10:%' OR O.GetTime LIKE '11:%';