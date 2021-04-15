CREATE DATABASE learn_sql_mySql;

SHOW DATABASES;

USE learn_sql_mySql;

CREATE TABLE orders(
orders INT(11)
);

SHOW TABLES;

EXPLAIN orders;

SELECT * FROM orders;

ALTER TABLE orders
ADD orders_id INT(11)
AFTER orders;

DROP TABLE orders;

CREATE TABLE products(
product_name VARCHAR(12),
product_marka VARCHAR(12),
date_manifactore DATE,
end_date DATE
);

EXPLAIN products;

SELECT * FROM products;


ALTER TABLE products
ADD end_datasecond INT(12)
AFTER date_manifactore;
