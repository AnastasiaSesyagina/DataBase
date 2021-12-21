--Показать количество сотрудников и отдел (Department), в котором работает минимальное количество сотрудников (Представление [HumanResources].[vEmployeeDepartment]).
SELECT TOP (1) MIN(EmpNum) AS MinEmpNum, C.Department
FROM 
	(
	SELECT COUNT(Department) AS EmpNum, Department
	FROM [HumanResources].[vEmployeeDepartment]
	GROUP BY Department
	) AS C
GROUP BY C.Department
ORDER BY MinEmpNum;