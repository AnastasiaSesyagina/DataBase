--Найти количество городов из разных стран из таблицы Person.StateProvince (из выборки исключить пустые поля).
SELECT CountryRegionCode, COUNT(Name) AS CountRegion
FROM Person.StateProvince
WHERE CountryRegionCode IS NOT NULL
GROUP BY CountryRegionCode;