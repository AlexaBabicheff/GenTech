// 1.Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.//
SELECT 
	Phone
FROM Suppliers
	where Not Country in ('Germany', 'France')
// 2. Для товаров до 10 EUR установить категорию 8 и применить наценку в 20%.//
ALTER TABLE Products
ADD Category;
update Products
set Category = 8
where Price <=10
select *,
	Price *.8 AS Sale_Price
from Products
where Category = 8Where 

// 3.Удалить поставщиков из USA и Germany.//
delete FROM Suppliers where Country in ('USA', 'Germany')
//4. Добавить два поставщика из Spain с произвольными номерами телефонов.//
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES ('tratata', '', '', '', '', 'Spain', 13124161434), ('pumpum', '', '', '', '', 'Spain', 13124161434)
	
// 5. Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.//
FROM Products
where 
    CategoryID IN (3, 6)
    and
    Price <=20
order by Price desc
//6. Вывести три самых дорогих товара до 200 EUR.//
SELECT  *
FROM Products
where Price <=200
order by Price desc
limit 3
