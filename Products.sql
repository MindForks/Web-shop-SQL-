USE [Web-shop]

CREATE TABLE Products
(
	Id INT PRIMARY KEY IDENTITY(1,1)
	,Title NVARCHAR(255) NOT NULL
	,Price SMALLMONEY NOT NULL
	,CountInStock SMALLINT NOT NULL CHECK(CountInStock >= 0)
	,ManufacturerID INT
	,CategoriesID INT

	 ,CONSTRAINT FK_Products_To_Manufacturers FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers (Id)
	 ,CONSTRAINT FK_Products_To_Categories FOREIGN KEY (CategoriesID) REFERENCES Categories (Id)
)