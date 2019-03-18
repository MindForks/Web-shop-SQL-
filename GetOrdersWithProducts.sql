USE [Web-shop]

GO
CREATE OR ALTER VIEW GetOrdersWithProducts AS
SELECT 
	o.Id AS OrderId
	,o.UserId AS UserId
	,p.Title AS ProductTitle
	,op.Quantity AS ProductsCount

FROM Orders o
LEFT OUTER JOIN  Orders_Product op ON op.OrdersId = o.Id
INNER JOIN  Products p ON p.Id = op.ProductsId
