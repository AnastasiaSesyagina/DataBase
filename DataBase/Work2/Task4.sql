--Найти профессии из таблицы HumanResources.Employee, где количество работников женского пола больше 1 (из выборки исключить пустые поля).
SELECT JobTitle, Gender, COUNT(BusinessEntityID) AS Count
FROM HumanResources.Employee
WHERE JobTitle IS NOT NULL AND Gender IS NOT NULL
GROUP BY JobTitle, Gender
HAVING COUNT(BusinessEntityID) > 1 AND Gender LIKE 'F';