 //1. Вывести название и стоимость в USD одного самого дорогого проданного товара//
SELECT 
	ProductName,
   	Price *1.06 AS Price_USD
FROM Products
Join OrderDetails on Products.ProductID=OrderDetails.ProductID
order by Price_USD DESC
Limit 1

//2.  Вывести два самых дорогих товара из категории Beverages из USA//
SELECT *

FROM Products

Join Categories on Products.CategoryID = Categories.CategoryID
Join Suppliers on Products.SupplierID=Suppliers. SupplierID

where 
	Categories.CategoryName = 'Beverages'
and
	Suppliers.Country = 'USA'
    
order by Price DESC
limit 2

//3.  Вывести заказы, добавив поле доставлено (или нет), учитывая, что доставлены только 10248 и 10249//
ALTER TABLE Orders
ADD Delivery;

UPDATE Orders
SET Delivery = 'yes'
where OrderID in (10248, 10249)

SELECT * 
FROM Orders


//4. Вывести список стран, которые поставляют морепродукты//

SELECT distinct	
Country	
FROM Products
join Suppliers on products.SupplierID=suppliers.SupplierID
where CategoryID = 8

//5. Очистить поле ContactName у всех клиентов не из China//
UPDATE Customers
SET
	ContactName=''
WHERE
	Country!='China'
