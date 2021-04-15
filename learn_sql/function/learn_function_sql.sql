
SELECT Date(NOW());

SELECT dayname(DATE(NOW()));

SELECT dayofmonth(DATE(NOW()));

SELECT dayofweek(DATE(NOW()));

SELECT dayofyear(DATE(NOW()));

SELECT Day(curdate());

SELECT * FROM `world`.`city`;

EXPLAIN `city`;

SELECT `Name`,`Population` From `city`;

SELECT `Name`,`Population` From `city` WHERE`Population` < 1e4;
