-- Write a query to create a database 
CREATE DATABASE Retail_Mart;

-- Write a query to select the database
USE Retail_Mart;




--Customer table with the fields as customer id, customer name, customer location, and customer phone number
CREATE TABLE Customer_Table(
	customer_id int not null,
    customer_name varchar(100) not null,
    customer_location varchar(100) not null,
    customer_phoneNo int not null);			

--Write a query to create a product table with fields as product code, product name, price, stock and category, 
CREATE TABLE Product_Table(
	product_code int not null,
    product_name varchar(100) not null,
    price int not null,
    stock int not null,
    category varchar(100) not null);
 
 --Sales table with the fields as date, order number, product code, product name, quantity, and price.
CREATE TABLE Sales_Table(
	order_date varchar(100) not null,
    order_no varchar(100) not null,
    customer_id int not null,
    customer_name varchar(100),
    product_code int not null,
    product_name varchar(100) not null,
	quantity int not null,
    price int not null);


--Write a query to insert values into the tables.
-- for customer_table
INSERT INTO Customer_Table VALUES('1111','Nisha','kerala','8392320');
INSERT INTO Customer_Table VALUES('1212','Oliver','kerala','4353891');
INSERT INTO Customer_Table VALUES('1216','Nila','delhi','3323242');
INSERT INTO Customer_Table VALUES('1246','Vignesh','chennai','1111212');
INSERT INTO Customer_Table VALUES('1313','shiny','Maharastra','5454543');
INSERT INTO Customer_Table VALUES('2123','Biyush','Bombay','1253358');
INSERT INTO Customer_Table VALUES('3452','Alexander','West Bengal','1212134');
INSERT INTO Customer_Table VALUES('3921','Mukesh','Manipur','4232321');
INSERT INTO Customer_Table VALUES('9021','Rithika','Kashmir','1121344');
INSERT INTO Customer_Table VALUES('9212','Jessica','banglore','1233435');
INSERT INTO Customer_Table VALUES('9875','Stephen','chennai','1212133');


-- for product_table
INSERT INTO Product_Table VALUES('1','tulip','198','5','perfume');
INSERT INTO Product_Table VALUES('2','cornoto','50','21','icecream');
INSERT INTO Product_Table VALUES('3','Pen','10','52','Stationary');
INSERT INTO Product_Table VALUES('4','Lays','10','20','snacks');
INSERT INTO Product_Table VALUES('5','mayanoise','90','10','dip');
INSERT INTO Product_Table VALUES('6','jam','105','10','spread');
INSERT INTO Product_Table VALUES('7','shampoo','5','90','hair product');
INSERT INTO Product_Table VALUES('8','axe','210','4','perfume');
INSERT INTO Product_Table VALUES('9','park avenue','901','2','perfume');
INSERT INTO Product_Table VALUES('10','wattagirl','201','3','perfume');
INSERT INTO Product_Table VALUES('11','pencil','4','10','Stationary');
INSERT INTO Product_Table VALUES('12','sharpener','5','90','Stationary');
INSERT INTO Product_Table VALUES('13','sketch pen','30','10','Stationary');
INSERT INTO Product_Table VALUES('14','tape','15','30','Stationary');
INSERT INTO Product_Table VALUES('15','paint','60','12','Stationary');
INSERT INTO Product_Table VALUES('16','chocolate','25','50','snacks');
INSERT INTO Product_Table VALUES('17','biscuts','60','26','snacks');
INSERT INTO Product_Table VALUES('18','mango','100','21','fruits');
INSERT INTO Product_Table VALUES('19','apple','120','9','fruits');
INSERT INTO Product_Table VALUES('20','kiwi','140','4','fruits');
INSERT INTO Product_Table VALUES('21','carrot','35','12','vegetable');
INSERT INTO Product_Table VALUES('22','onion','22','38','vegetable');
INSERT INTO Product_Table VALUES('23','tomato','21','15','vegetable');
INSERT INTO Product_Table VALUES('24','serum','90','4','hair product');
INSERT INTO Product_Table VALUES('25','conditioner','200','5','hair product');
INSERT INTO Product_Table VALUES('26','oil bottle','40','2','kitchen utensil');

-- for sales_table
INSERT INTO Sales_Table VALUES('24-07-2016', 'HM06', '9212', 'Jessica', 11, 'pencil', '3', '30');
INSERT INTO Sales_Table VALUES('24-07-2016','HM06','9212','Jessica','11','pencil','3','30');
INSERT INTO Sales_Table VALUES('19-10-2016','HM09','3921','Mukesh','17','biscuits','10','600');
INSERT INTO Sales_Table VALUES('30-10-2016','HM10','9875','Stephen','2','cornoto','10','500');
INSERT INTO Sales_Table VALUES('12-04-2018','HM03','1212','Oliver','20','kiwi','3','420');
INSERT INTO Sales_Table VALUES('02-05-2018','HM05','1910','Mohan','20','kiwi','2','280');
INSERT INTO Sales_Table VALUES('20-09-2018','HM08','5334','Chirsty','16','chocolate','2','50');
INSERT INTO Sales_Table VALUES('11-01-2019','HM07','1246','Vignesh','19','apple','5','600');
INSERT INTO Sales_Table VALUES('15-03-2019','HM01','1910','Mohan','5','mayanoise','4','360');
INSERT INTO Sales_Table VALUES('10-02-2021','HM04','1111','Nisha','25','carrot','5','1000');
INSERT INTO Sales_Table VALUES('12-02-2021','HM02','2123','Biyush','3','Pen','2','20');

-- Add Two columns to the sales table
ALTER TABLE Sales_Table
ADD COLUMN  Quality char(10),
ADD COLUMN ExpiryDate varchar(30);

-- Change the column type of stock in the product table to varchar
ALTER TABLE Product_Table
MODIFY COLUMN stock varchar(9);

-- Change the table name from customer to customer details

ALTER TABLE Customer_Table RENAME Customer_Details;

-- Drop the columns you created in sales table

ALTER TABLE Sales_Table
DROP COLUMN Quality,
DROP COLUMN ExpiryDate;

-- Display order id, custome_id, order_date,  price, quantity from the sales table

SHOW COLUMNS FROM Sales_Table WHERE field NOT
IN('ProductName','CustomerName', 'ProductCode');


-- Display all details in the product table if the category is stationary

SELECT * FROM Product_Table WHERE category = 'stationary';

-- Display a unique category from the product table
-- SELECT DISTINCT category from Product;

SELECT category FROM Product_Table GROUP BY category;

-- Display the sales details
-- (if quantity > 2) from sales table
-- (if price < 500) from sales table

SELECT * FROM Sales_Table WHERE quantity > 2 and price < 500;


-- Display customers name if the name ends with a 

SELECT * FROM Customer_Details WHERE customer_name like "%a";

-- Display product details in descending order of the price

SELECT * FROM `Product_Table` ORDER BY price DESC;

-- Display product code and category from similar categories that are 
-- (greater than 2)

SELECT * FROM Product_Table WHERE product_code > 2 and category > 2;

-- Display order number
-- Display customer number
-- Combine the results of the order and
-- Customer tables including duplicate rowsLOAD DATA INFILE 'C:\Data Science\SQL\mart\product_databases.csv' INTO TABLE Product FIELDS TERMINATED BY ',' IGNORE 1 ROWS



