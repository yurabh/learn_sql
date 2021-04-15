CREATE DATABASE product;

SHOW DATABASES;

EXPLAIN `products`;

DROP TABLE `products`;

ALTER TABLE `products`
ADD COLUMN `proudct_id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE `products`
ADD COLUMN `price` INT(55) NOT NULL AFTER `product_marka`;

ALTER TABLE `products`
DROP COLUMN `price`;

EXPLAIN `products`;
CREATE TABLE `products`(
`product_id`INT(11) NOT NULL AUTO_INCREMENT,
`product_marka` VARCHAR(20) DEFAULT NULL,
`product_name` VARCHAR(20) DEFAULT NULL,
`date_manifactore` DATE DEFAULT NULL,
`end_date` DATE DEFAULT NULL,
`create_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`update_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`product_id`)
)ENGINE= InnoDB DEFAULT CHARSET=latin1;


SELECT * FROM `products`;


INSERT INTO `products` VALUES
(NULL,'beer1','Hike','2017-08-22','2018,-08,12',NULL,NULL);


INSERT INTO `products` SET
`product_name` = 'fish',
`date_manifactore` = '2018-12-1';


INSERT INTO `products`(`product_name`,`product_marka`) VALUES
('buter','buchach'),
('buter111','buchach111');



UPDATE `products` SET
`price` = 251,
`product_name` = 'yura121'
WHERE `product_id`= 4;


DELETE FROM `products` WHERE `product_id` = 4;


SHOW DATABASES;

USE `learn_sql_mySql`;

SHOW TABLES;

EXPLAIN `orders`;

ALTER TABLE `work_place`
ADD COLUMN `number_computer` int(15) NOT NULL AFTER `numb_work_place`;

DROP TABLE work_place;

CREATE TABLE `work_place`(
`work_place_id` INT(20) NOT NULL AUTO_INCREMENT,
`numb_work_place` INT(30) DEFAULT NULL,
`create_data` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`update_data` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`work_place_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `work_place` VALUES
(21,1,NULL,NULL);


INSERT INTO `work_place` SET
`work_place_id` = 12,
`numb_work_place` = 54;

INSERT INTO `work_place`(`work_place_id`,`numb_work_place`) VALUES
(1234,4321),
(55555,1111);

UPDATE `work_place` SET
`work_place_id` = 222,
`numb_work_place` = 666
WHERE `work_place_id` = 55555;

DELETE FROM `work_place` WHERE `work_place_id` = 222;

SELECT * FROM `work_place`;




CREATE TABLE `Paiment`(
`paiment_id` INT(12) NOT NULL AUTO_INCREMENT,
`cart_numb` INT(14) DEFAULT NULL,
`create_data` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
`update_data` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`paiment_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `Paiment`
ADD COLUMN `data_paiment` DATE NOT NULL AFTER `paiment_id`;

ALTER TABLE `Paiment`
ADD COLUMN `sum_paymant` int(13) NOT NULL AFTER `data_paiment`;

SELECT * FROM `Paiment`;

INSERT INTO `Paiment` VALUES
(NULL,'2020-12-12','1200','513424234',NULL,NULL);


INSERT INTO `Paiment` SET
`paiment_id` = 132,
`data_paiment` = '2017-02-11',
`cart_numb` = 54571111,
`sum_paymant` = 2600;


INSERT INTO  `Paiment`(`data_paiment`,`cart_numb`,`sum_paymant`) VALUES
('2020-12-12',123456,1300),
('2020-12-12',654321,2600);


UPDATE `Paiment` SET
`cart_numb` = 4444
WHERE `paiment_id` = 3;


DELETE FROM `Paiment` WHERE `cart_numb` = 1200;

SELECT * FROM `Paiment`;



CREATE DATABASE `orders`;

SHOW DATABASES;

USE `orders`;

SHOW TABLES;

DROP DATABASE `orders`;

EXPLAIN `orders`;

CREATE TABLE `orders`(
`id` int(11) NOT NULL AUTO_INCREMENT ,
`price`int(12) NOT NULL ,
`product` VARCHAR (15) NOT NULL,
`number_cart`int(16) NOT NULL,
`create_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
`update_data` TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
PRIMARY KEY (`id`),
UNIQUE (`number_cart`)
)ENGINE=InnoDB DEFAULT CHAR SET = utf8;


ALTER TABLE `orders`
ADD COLUMN `date_oplatu` DATE NOT NULL AFTER `price`;


ALTER TABLE `orders`
DROP COLUMN `product`;

ALTER TABLE `orders` MODIFY COLUMN `product`  VARCHAR(30) NOT NULL DEFAULT 'product))';

DROP TABLE `orders`;

TRUNCATE `orders`;

SELECT * FROM `orders`;

INSERT INTO `orders`(`id`,`price`,`date_oplatu`,`product`,`number_cart`,`create_date`,`update_data`)VALUES
(NULL,1300,'2017-06-13','yura',5457082,NULL,NULL),
(NULL,2900,'2018-01-16','colam',5457013,NULL,NULL);


INSERT INTO `orders` VALUES
(NULL,1000,'2018-01-16','tomas',5457234,NULL,NULL);


INSERT INTO `orders` SET
`id` = NULL,
`price` = 1300,
`date_oplatu`= '2020-01-16',
`product` = 'oksana',
`number_cart` = 540897,
`create_date` = NULL,
`update_data` = NULL;


UPDATE `orders` SET
`number_cart` = 1111 WHERE `id` = 1;

DELETE FROM `orders` WHERE `id` = 1;





CREATE DATABASE `clients`;

USE `clients`;

SHOW DATABASES;

DROP DATABASE `clients`;

EXPLAIN `clients`;

SHOW TABLES;

DROP TABLE `clients`;

CREATE TABLE `clients`(
`index` INT(11) NOT NULL AUTO_INCREMENT,
`name_client` VARCHAR (13) NOT NULL,
`surname_client` VARCHAR (16) NOT NULL,
`number_phone` INT(11) NOT NULL,
`create_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
`update_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
PRIMARY KEY(`index`),
UNIQUE(`number_phone`)
)ENGINE= InnoDB DEFAULT CHAR SET = utf8;

ALTER TABLE `clients` MODIFY COLUMN `surname_client` VARCHAR(40) NOT NULL;

ALTER TABLE `clients`
DROP COLUMN `name_client`;

ALTER TABLE `clients`
ADD COLUMN `address` VARCHAR (25) DEFAULT NULL AFTER `name_client`;

TRUNCATE `clients`;

SELECT * FROM `clients`;

INSERT INTO `clients`(`index`,`name_client`,`address`,`surname_client`,`number_phone`,`create_date`,`update_date`)VALUES
(NULL,'yura','Bahlay','trylossfsf',1111123,NULL,NULL),
(NULL,'yura22','Bahlay11','trylossfsf11',11111423,NULL,NULL),
(NULL,'yura11','Bahlay22','trylossfsf11',234234,NULL,NULL),
(NULL,'yura33','Bahlay33','trylossfsf11',1234233,NULL,NULL);

INSERT INTO`clients` VALUES
(NULL,'yu','Bah','try',11112123,NULL,NULL),
(NULL,'yur','Bah','try',11111323,NULL,NULL);

INSERT INTO `clients` SET
`index`= NULL,
`name_client` = 'ola',
`address` = '2018-12-02',
`surname_client` = 'ola',
`number_phone` = 1113221313,
`create_date` = NULL,
`update_date` = NULL;

UPDATE `clients` SET
`name_client` = 'ana'
WHERE `index` = 1;

DELETE FROM `clients` WHERE `index` = 2;
