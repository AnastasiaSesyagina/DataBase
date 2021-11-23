--�������� ID ����������� (BusinessEntityID), ���� ������ (SalesQuota), ������� � ���� ���� (SalesYTD) � 
--������� � ������� ���� (SalesLastYear) �� ������� Sales.SalesPerson. 
--����������� ���� ������ �������� �� 0 � ������� � ��������� ���� � ��������� OtherSalesQuota.
SELECT BusinessEntityID, SalesQuota, SalesYTD, SalesLastYear,
       ISNULL(SalesQuota, 0) AS OtherSalesQuota
FROM Sales.SalesPerson;