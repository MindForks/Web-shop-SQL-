USE [Web-shop]

CREATE TABLE Orders_Product(
	OrdersId INT NOT NULL
	,ProductsId INT NOT NULL
	,Quantity INT NOT NULL DEFAULT 1

	,PRIMARY KEY (OrdersId, ProductsId)

	,CONSTRAINT FK_Orders_Product_To_Orders FOREIGN KEY (OrdersId) REFERENCES Orders (Id)
	,CONSTRAINT FK_Orders_Product_To_Products FOREIGN KEY (ProductsId) REFERENCES Products (Id)
)