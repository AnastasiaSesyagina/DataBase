--Показать поля ProductID, [Name] из таблицы Production.Product с применением функции COALESCE(). 
--Показать поле Meauserement , так, чтобы, если значение в поле Size известно, то показать его, 
--а иначе, показать значение в поле Class. Если и в поле Class значение неизвестно, то вывести значение 'UNKNOWN'.
SELECT ProductID, [Name],
       COALESCE(Size, Class, 'UNKNOWN') AS Meauserement
FROM Production.Product;