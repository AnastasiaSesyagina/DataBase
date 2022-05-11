--Процедура вставки данных в таблицу Order 
CREATE PROC dbo.pOrderInsert
(
	 @Person_CustomerPN NVARCHAR(50)
	,@Person_CourierPN NVARCHAR(50)
	,@Address NVARCHAR(50)
	,@GetTime TIME
	,@DeliveryTime TIME	
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			--1.
			DECLARE @ID_Customer UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Person 
			WHERE PhoneNumber = @Person_CustomerPN
			);

			--2.
			DECLARE @ID_Courier UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Person 
			WHERE PhoneNumber = @Person_CourierPN);

			--3.
			INSERT INTO [Order]
			VALUES(NEWID(), @ID_Customer, @ID_Courier, @Address, @GetTime, @DeliveryTime)

		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Attempt to insert null value is not allowed',16,1)
	END CATCH;
END;