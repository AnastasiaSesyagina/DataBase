--�������� ���� ProductID, [Name] �� ������� Production.Product � ����������� ������� COALESCE(). 
--�������� ���� Meauserement , ���, �����, ���� �������� � ���� Size ��������, �� �������� ���, 
--� �����, �������� �������� � ���� Class. ���� � � ���� Class �������� ����������, �� ������� �������� 'UNKNOWN'.
SELECT ProductID, [Name],
       COALESCE(Size, Class, 'UNKNOWN') AS Meauserement
FROM Production.Product;