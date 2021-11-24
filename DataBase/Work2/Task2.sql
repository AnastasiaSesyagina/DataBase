--Найти среднее время отдыха работников женского пола, которым 50 лет из таблицы HumanResources.Employee.
SELECT AVG(VacationHours) AS AvgVacationHours
FROM HumanResources.Employee
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) = 50 AND Gender LIKE 'F';