-- Create a MySQL Database called bamazon --
DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

-- Then create a Table inside of that database called products. --
CREATE TABLE products (
-- unique id for each product --
item_id INT NOT NULL,
-- Name of product --
product_name VARCHAR (75) NOT NULL,
department_name VARCHAR(75) NOT NULL,
-- cost to customer --
price DECIMAL(4,2) NOT NULL,
-- how much of the product is available in stores --
stock_quantity INT NOT NULL);



-- Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table). --
-- Product 1 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10001, 'Product 1', 'Department A', '10.00', '10');

-- Product 2 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10002, 'Product 2', 'Department B', '20.00', '20');

-- Product 3 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10003, 'Product 3', 'Department C', '30.00', '30');

-- Product 4 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10004, 'Product 4', 'Department C', '40.00', '40');

-- Product 5 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10005, 'Product 5', 'Department A', '50.00', '50');

-- Product 6 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10006, 'Product 6', 'Department B', '60.00', '60');

-- Product 7 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10007, 'Product 7', 'Department C', '70.00', '70');

-- Product 8 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10008, 'Product 8', 'Department A', '80.00', '80');

-- Product 9 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10009, 'Product 9', 'Department B', '90.00', '90');

-- Product 10 --
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (10010, 'Product 10', 'Department C', '10.00', '100');





