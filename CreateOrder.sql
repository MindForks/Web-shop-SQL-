USE [Web-shop]

GO
CREATE TYPE ProdctsToBuy AS TABLE
(
  ProductID INT
  ,Quantity INT
);

GO
CREATE OR ALTER PROCEDURE CreateOrder
	@productsToBuy AS ProdctsToBuy READONLY
	,@UserId INT
AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY	

		UPDATE Products WITH (UPDLOCK)
		SET CountInStock -= Selected.Quantity 
		FROM (SELECT * FROM @productsToBuy) as Selected
		WHERE Products.Id = Selected.ProductID

		INSERT INTO Orders (UserId) VALUES (@UserId )
		DECLARE @CurrentOrderId AS INT = IDENT_CURRENT('Orders');

		INSERT INTO Orders_Product (OrdersId, ProductsId, Quantity)  
		SELECT @CurrentOrderId, prod.ProductID, prod.Quantity  FROM @productsToBuy prod;

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
			RAISERROR('It`s isn`t enough product count in stock',16,1);
	END CATCH
END;