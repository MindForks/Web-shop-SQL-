USE [Web-shop]

GO
CREATE OR ALTER VIEW GetOrders AS
SELECT 
	o.Id AS OrderId
	,o.UserId

FROM Orders o