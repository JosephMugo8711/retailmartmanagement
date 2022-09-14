 -- Creation of mart database
 CREATE DATABASE  Mart;

-- Using mart database
USE Mart;


-- Creating product table
CREATE TABLE Product (
    ProductCode int,
    ProductName varchar(255),
    Price int,
    Stock int,
    Category varchar(255)
);

-- creation of sales Table
CREATE TABLE Sales (
    PurchaseDate varchar(50),
    OrderNumber varchar(50),
    CustomeID int,
    CustomerName char(50),
    ProductCode int,
    ProductName char(30),
    Quantity int,
    Price int
);

INSERT INTO Customer VALUES('1111','Nisha','kerala','8392320');
INSERT INTO Customer VALUES('1212','Oliver','kerala','4353891');
INSERT INTO Customer VALUES('1216','Nila','delhi','3323242');
INSERT INTO Customer VALUES('1246','Vignesh','chennai','1111212');
INSERT INTO Customer VALUES('1313','shiny','Maharastra','5454543');
INSERT INTO Customer VALUES('2123','Biyush','Bombay','1253358');
INSERT INTO Customer VALUES('3452','Alexander','West Bengal','1212134');
INSERT INTO Customer VALUES('3921','Mukesh','Manipur','4232321');
INSERT INTO Customer VALUES('9021','Rithika','Kashmir','1121344');
INSERT INTO Customer VALUES('9212','Jessica','banglore','1233435');
INSERT INTO Customer VALUES('9875','Stephen','chennai','1212133');


INSERT INTO Product VALUES('1','tulip','198','5','perfume');
INSERT INTO Product VALUES('2','cornoto','50','21','icecream');
INSERT INTO Product VALUES('3','Pen','10','52','Stationary');
INSERT INTO Product VALUES('4','Lays','10','20','snacks');
INSERT INTO Product VALUES('5','mayanoise','90','10','dip');
INSERT INTO Product VALUES('6','jam','105','10','spread');
INSERT INTO Product VALUES('7','shampoo','5','90','hair product');
INSERT INTO Product VALUES('8','axe','210','4','perfume');
INSERT INTO Product VALUES('9','park avenue','901','2','perfume');
INSERT INTO Product VALUES('10','wattagirl','201','3','perfume');
INSERT INTO Product VALUES('11','pencil','4','10','Stationary');
INSERT INTO Product VALUES('12','sharpener','5','90','Stationary');
INSERT INTO Product VALUES('13','sketch pen','30','10','Stationary');
INSERT INTO Product VALUES('14','tape','15','30','Stationary');
INSERT INTO Product VALUES('15','paint','60','12','Stationary');
INSERT INTO Product VALUES('16','chocolate','25','50','snacks');
INSERT INTO Product VALUES('17','biscuts','60','26','snacks');
INSERT INTO Product VALUES('18','mango','100','21','fruits');
INSERT INTO Product VALUES('19','apple','120','9','fruits');
INSERT INTO Product VALUES('20','kiwi','140','4','fruits');
INSERT INTO Product VALUES('21','carrot','35','12','vegetable');
INSERT INTO Product VALUES('22','onion','22','38','vegetable');
INSERT INTO Product VALUES('23','tomato','21','15','vegetable');
INSERT INTO Product VALUES('24','serum','90','4','hair product');
INSERT INTO Product VALUES('25','conditioner','200','5','hair product');
INSERT INTO Product VALUES('26','oil bottle','40','2','kitchen utensil');

INSERT INTO Sales VALUES('24-07-2016','HM06','9212','Jessica','11','pencil','3','30');
INSERT INTO Sales VALUES('19-10-2016','HM09','3921','Mukesh','17','biscuits','10','600');
INSERT INTO Sales VALUES('30-10-2016','HM10','9875','Stephen','2','cornoto','10','500');
INSERT INTO Sales VALUES('12-04-2018','HM03','1212','Oliver','20','kiwi','3','420');
INSERT INTO Sales VALUES('02-05-2018','HM05','1910','Mohan','20','kiwi','2','280');
INSERT INTO Sales VALUES('20-09-2018','HM08','5334','Chirsty','16','chocolate','2','50');
INSERT INTO Sales VALUES('11-01-2019','HM07','1246','Vignesh','19','apple','5','600');
INSERT INTO Sales VALUES('15-03-2019','HM01','1910','Mohan','5','mayanoise','4','360');
INSERT INTO Sales VALUES('10-02-2021','HM04','1111','Nisha','25','carrot','5','1000');
INSERT INTO Sales VALUES('12-02-2021','HM02','2123','Biyush','3','Pen','2','20');

DROP TABLE Sales2;

-- Add Two columns to the sales table
ALTER TABLE Sales
ADD COLUMN  Quality char(10),
ADD COLUMN ExpiryDate varchar(30);
 
-- Change the column type of stock in the product table to varchar

alter table Product
modify column Stock varchar(9);

-- Change the table name from customer to customer details

ALTER TABLE Customer RENAME CustomerDetails;

-- Drop the columns you created in sales table

ALTER TABLE Sales
DROP COLUMN Quality,
DROP COLUMN ExpiryDate;

-- Display order id, custome_id, order_date,  price, quantity from the sales table

SHOW COLUMNS FROM Sales where field not
in('ProductName','CustomerName', 'ProductCode');


-- Display all details in the product table if the category is stationary

select * from product where category = 'stationary';

-- Display a unique category from the product table
-- SELECT DISTINCT category from Product;

select category from Product group by category;

-- Display the sales details
-- (if quantity > 2) from sales table
-- (if price < 500) from sales table

select * from Sales where Quantity > 2 and Price < 500;


-- Display customers name if the name ends with a 
select * from CustomerDetails where CustomerName like "%a";
-- Display product details in descending order of the price
SELECT * FROM `Product` ORDER BY Price DESC;
-- Display product code and category from similar categories that are 
-- (greater than 2)
SELECT * FROM Product WHERE ProductCode > 2 and Categories > 2;
-- Display order number
-- Display customer number
-- Combine the results of the order and
-- Customer tables including duplicate rowsLOAD DATA INFILE 'C:\Data Science\SQL\mart\product_databases.csv' INTO TABLE Product FIELDS TERMINATED BY ',' IGNORE 1 ROWS
