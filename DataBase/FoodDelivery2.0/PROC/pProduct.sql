--Процедура вставки данных в таблицу Product
CREATE PROC dbo.pProductInsert
(
	 @MenuName VARCHAR(50),
	 @Price MONEY
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Product
			VALUES(NEWID(), @MenuName, @Price)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END; 