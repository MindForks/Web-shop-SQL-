USE [Web-shop]

GO
CREATE OR ALTER PROCEDURE CreateManufacturer
 @title NVARCHAR(255)
AS
BEGIN
	INSERT INTO Manufacturers (Title) VALUES (@title)
END;

EXEC CreateManufacturer @title = 'New Manufacturer';