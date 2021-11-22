--Отсортировать в обратном алфавитном порядке строки таблицы Person.AddressType в соответствии с полем [Name]. 
--Показать поля AddressTypeID и [Name].
SELECT AddressTypeID, [Name]
FROM Person.AddressType
ORDER BY [Name] DESC;