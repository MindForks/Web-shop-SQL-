USE [Web-shop]

GO
CREATE OR ALTER PROCEDURE CreateCategory
 @title NVARCHAR(255)
 ,@desc NVARCHAR(255)
AS
BEGIN
	INSERT INTO Categories(Title,Descriptions) VALUES (@title,@desc)
END;

EXEC CreateCategory 
		@title = ' New Category'
		,@desc = 'Some about new categort';

