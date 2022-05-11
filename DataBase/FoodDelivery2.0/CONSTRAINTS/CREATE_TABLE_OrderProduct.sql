﻿USE FoodDelivery2;

CREATE TABLE OrderProduct
(
	 ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID()
	  CONSTRAINT PK_OrderProduct PRIMARY KEY
	, ID_Order UNIQUEIDENTIFIER NOT NULL
	  CONSTRAINT FK_Order FOREIGN KEY 
	  REFERENCES [Order](ID)
	  ON DELETE CASCADE 
	  ON UPDATE CASCADE
	, ID_Product UNIQUEIDENTIFIER NOT NULL
	  CONSTRAINT FK_Product FOREIGN KEY
	  REFERENCES Product(ID)
	  ON DELETE NO ACTION
	  ON UPDATE CASCADE
);

DROP TABLE [OrderProduct];