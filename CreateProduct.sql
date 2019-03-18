USE [Web-shop]

GO
CREATE OR ALTER PROCEDURE CreateProduct
 @Title NVARCHAR(255)
 ,@Price SMALLMONEY
 ,@CountInStock SMALLINT 
 ,@ManufacturerID INT
 ,@CategoriesID INT
AS
BEGIN
	INSERT INTO Products (Title, Price, CountInStock, ManufacturerID, CategoriesID ) 
		VALUES (@Title, @Price, @CountInStock, @ManufacturerID, @CategoriesID )
END;


EXEC CreateProduct 
		 @Title = 'Best product'
		 ,@Price = 200.40
		 ,@CountInStock = 3 
		 ,@ManufacturerID = 1
		 ,@CategoriesID = 1


