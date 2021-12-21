--Показать количество городов и штат (StateProvinceID), в котором находится максимальное количество городов (Таблица Person.[Address])
SELECT TOP (1) MAX(CityNum) AS MaxCityNum, C.StateProvinceID
FROM 
	(
	SELECT COUNT(City) AS CityNum, StateProvinceID
	FROM Person.[Address]
	GROUP BY StateProvinceID
	) AS C
GROUP BY C.StateProvinceID
ORDER BY MaxCityNum DESC;