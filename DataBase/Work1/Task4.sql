--Из таблицы HumanResources.JobCandidate показать ID кандидатов на должность (JobCandidateID), ID сотрудников (BusinessEntityID) 
--и резюме ([Resume]). Показать только существующие ID сотрудников.
SELECT JobCandidateID, BusinessEntityID, [Resume]
FROM HumanResources.JobCandidate
WHERE BusinessEntityID IS NOT NULL;