--Процедура вставки данных в таблицу Role
CREATE PROC dbo.pRoleInsert
(
	 @RoleName NVARCHAR(50)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Role
			VALUES(NEWID(), @RoleName)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END; 