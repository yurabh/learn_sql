CREATE DATABASE online_shop;
SHOW DATABASES;
USE online_shop;
DROP DATABASE online_shop;
DROP TABLE products;

CREATE TABLE products(
product_Id INT(11),
product_name VARCHAR(30),
price INT,
production_data DATE
);

SHOW TABLES;
EXPLAIN products;

SELECT * FROM products;

ALTER TABLE products
ADD product_desc VARCHAR(100)
AFTER product_name;

ALTER TABLE products DROP product_name;

ALTER TABLE products
CHANGE product_name product_name VARCHAR(20);
