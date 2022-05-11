CREATE VIEW dbo.vPersonRole
AS
SELECT p.FullName
	 , p.PhoneNumber
     , r.[RoleName]
FROM Person AS p
INNER JOIN PersonRole AS pr
ON p.ID = pr.ID_Person
INNER JOIN [Role] AS r
ON r.ID = pr.ID_Role;

SELECT *
FROM vPersonRole;

SELECT *
FROM PersonRole;