SELECT * FROM world.country;

EXPLAIN `country`;

SELECT `Name`,`Region` FROM `country` WHERE `SurfaceArea` < 1e2;

SELECT `Name`,`Region` FROM `country` WHERE `Population` < 1e4;

SELECT * FROM sakila.address;

SELECT `address`,`city_id` FROM `address` WHERE `city_id` <1e1;

SELECT `address`,`postal_code`,`city_id` FROM `address` WHERE `city_id` < 1e1;

SELECT `district` , `phone`,`city_id` FROM `address`WHERE `postal_code` < 1e3;
