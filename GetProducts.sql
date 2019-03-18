USE [Web-shop]

GO
CREATE OR ALTER VIEW GetProducts AS
SELECT 
	p.Id
	,p.Price AS Price
	,p.CountInStock AS CountInStock
	,p.Title AS Title
	,c.Title AS CategoryTitle
	,c.Descriptions AS CategoryDescription
	,m.Title AS ManufactureTitle

FROM Products p
INNER JOIN Categories c ON p.CategoriesID = c.Id
INNER JOIN Manufacturers m ON p.CategoriesID = m.Id