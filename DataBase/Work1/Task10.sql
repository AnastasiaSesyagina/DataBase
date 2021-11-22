--Из таблицы Person.PersonPhone показать ID сотрудников (BusinessEntityID), номера телефонов (PhoneNumber) и типы 
--номеров телефонов (PhoneNumberTypeID). Отсортировать все строки в алфавитном порядке в соответствии с 
--полем BusinessEntityID и все значения поля PhoneNumberTypeID равные 1 заменить на NULL. Названия полей оставить без изменений.
SELECT BusinessEntityID, PhoneNumber, 
       NULLIF(PhoneNumberTypeID, 1) AS PhoneNumberTypeID
FROM Person.PersonPhone
ORDER BY BusinessEntityID;