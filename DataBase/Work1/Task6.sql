--Из таблицы HumanResources.Department показать поля DepartmentID, [Name] и GroupName. Показать только значения поля GroupName 
--из списка ('Manufacturing','Quality Assurance','Research and Development'). Использовать оператор IN.
SELECT DepartmentID, [Name], GroupName
FROM HumanResources.Department
WHERE GroupName IN ('Manufacturing','Quality Assurance','Research and Development');