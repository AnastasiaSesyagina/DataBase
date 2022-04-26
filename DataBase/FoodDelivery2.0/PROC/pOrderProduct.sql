--Процедура вставки данных в таблицу OrderProduct
ALTER PROC dbo.pOrderProductInsert
(
	 @Address NVARCHAR(50)
	,@GetTime TIME
	,@ProductName NVARCHAR(50)
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			--1. 
			DECLARE @ID_Order UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM [Order] 
			WHERE [Address] = @Address AND GetTime = @GetTime
			);

			--2.
			DECLARE @ID_Product UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Product
			WHERE MenuName = @ProductName);

			--3. 
			INSERT INTO OrderProduct
			VALUES(NEWID(), @ID_Order, @ID_Product)

		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END;