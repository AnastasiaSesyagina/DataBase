--Процедура вставки данных в таблицу PersonRole
CREATE PROC dbo.pPersonRoleInsert
(
	 @Person_PNumber NVARCHAR(50)
	,@RoleName NVARCHAR(50)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			--1. Найти ID Person
			DECLARE @ID_Person UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Person 
			WHERE PhoneNumber = @Person_PNumber
			);

			--2. Найти ID Role
			DECLARE @ID_Role UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM [Role] 
			WHERE RoleName = @RoleName);

			--3. Вставляем новую запись в таблицу PersonRole
			INSERT INTO PersonRole
			VALUES(NEWID(), @ID_Person, @ID_Role)

		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END;