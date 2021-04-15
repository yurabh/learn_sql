CREATE DATABASE `Clients`;

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
