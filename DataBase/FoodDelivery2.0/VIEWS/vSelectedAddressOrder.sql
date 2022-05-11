--Показать содержимое заказа на выбранный адрес.
ALTER VIEW vSelectedAddressOrder AS
SELECT O.[Address], P.MenuName
FROM [Order] AS O JOIN OrderProduct AS OP ON O.ID = OP.ID_Order JOIN Product AS P ON OP.ID_Product = P.ID
WHERE O.[Address] = 'ул. Палиха, д. 9, кв. 46'; 

SELECT *
FROM vSelectedAddressOrder;