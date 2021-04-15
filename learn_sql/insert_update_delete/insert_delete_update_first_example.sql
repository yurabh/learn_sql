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
