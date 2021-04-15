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
