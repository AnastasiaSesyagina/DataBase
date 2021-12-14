--Показать, сколько времени доставляли каждый заказ.
SELECT OrderID, DATEDIFF(MINUTE, GetTime, DeliveryTime) AS [MinutesToGet]
FROM [Order];