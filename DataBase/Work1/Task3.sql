--�������� ���� ProductDescriptionID, [Description] �� ������� Production.ProductDescription, 
--��� ������� ������������� (ProductDescriptionID) ������ 3 � ������ 122. ������������ �������� BETWEEN.
SELECT ProductDescriptionID, [Description]
FROM Production.ProductDescription
WHERE ProductDescriptionID BETWEEN 3 AND 122;