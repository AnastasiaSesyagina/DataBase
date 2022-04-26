--Процедура вставки данных в таблицу Person
CREATE PROC dbo.pPersonInsert
(
	 @FullName VARCHAR(50),
	 @PhoneNumber VARCHAR(50)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Person
			VALUES(NEWID(), @FullName, @PhoneNumber)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END; 