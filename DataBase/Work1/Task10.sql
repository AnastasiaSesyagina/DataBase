--�� ������� Person.PersonPhone �������� ID ����������� (BusinessEntityID), ������ ��������� (PhoneNumber) � ���� 
--������� ��������� (PhoneNumberTypeID). ������������� ��� ������ � ���������� ������� � ������������ � 
--����� BusinessEntityID � ��� �������� ���� PhoneNumberTypeID ������ 1 �������� �� NULL. �������� ����� �������� ��� ���������.
SELECT BusinessEntityID, PhoneNumber, 
       NULLIF(PhoneNumberTypeID, 1) AS PhoneNumberTypeID
FROM Person.PersonPhone
ORDER BY BusinessEntityID;