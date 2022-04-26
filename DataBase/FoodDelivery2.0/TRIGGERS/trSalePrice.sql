CREATE TRIGGER SalePrice
ON Product
AFTER INSERT, UPDATE
AS
UPDATE Product
SET	Price = Price * 0.9
WHERE ID = (SELECT ID FROM inserted)

EXEC dbo.pProductInsert @MenuName = 'BonAqua газированная', @Price = 69

SELECT *
FROM Product