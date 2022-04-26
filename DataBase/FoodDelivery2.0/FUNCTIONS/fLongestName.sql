CREATE FUNCTION dbo.fLongestFullName()
    RETURNS NVARCHAR(50)
	AS
    BEGIN
        DECLARE @PersonName NVARCHAR(50) = (SELECT FullName as LongestFullName FROM Person WHERE FullName = (SELECT MAX(LEN(FullName)) FROM Person))
        RETURN @PersonName
    END; 