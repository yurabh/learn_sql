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



CREATE TABLE `players`(
`id` int(30) not null unique auto_increment,
`userName` varchar(30) not null unique,
`balance` int(11) not null ,
`lastBet` int(12) not null,
`created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`update` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY(`id`)
)ENGINE=INNODB DEFAULT CHARSET=`utf8`;


CREATE TABLE `games`(
`id` int(11) not null unique auto_increment,
`time` timestamp default current_timestamp,
`played_id` varchar(30) not null,
`win` int(11) not null ,
`lose` int(11) not null ,
PRIMARY kEY(`id`)
)ENGINE=INNODB DEFAULT CHARSET=`utf8`;
