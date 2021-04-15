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
