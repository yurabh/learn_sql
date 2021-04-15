SELECT * FROM world.city;

#GROUP BY => AGGREGATE FUNCTIONS (SUM, AVG, MAX, MIN, COUNT)

SELECT `CountryCode` FROM `city` GROUP BY `CountryCode`;

SELECT DISTINCT `CountryCode` FROM `city`;

SELECT `CountryCode`, COUNT(*) as `Amount` FROM `city` GROUP BY `CountryCode` ORDER BY `Amount` DESC;

SELECT
    `District`,
    COUNT(*) AS `cities`,
    SUM(`Population`) AS `Population`
FROM
    `city`
GROUP BY `District`
HAVING `cities` > 40
ORDER BY `cities` DESC;


SELECT COUNT(*) FROM `city`;

SELECT
    `CountryCode`, COUNT(*) AS `count` , `POPULATION`
FROM
    `city`
GROUP BY `CountryCode`
ORDER BY `count` DESC;



SELECT * FROM world.country;

SELECT
    `Code`, COUNT(*) AS `count`, SUM(`Population`) as `Suma`
FROM
    `country`
GROUP BY `Code`
HAVING SUM(`Population`) < 22000
ORDER BY `Suma` Desc;

SELECT
    `Continent`, COUNT(*) AS `Continent`
FROM
    `country` GROUP BY `Continent` ORDER BY `Continent` Desc;

SELECT * FROM world.country;


SELECT `Name`,
    MIN(`Population`) AS `MinPopulation`, MAX(`Population`) AS `MaxPopulation`
FROM
    `country` GROUP BY `Name`;

SELECT * FROM world.country;


SELECT
    `Continent`,
    COUNT(*) AS `CONTRIES`,
    MAX(`Population`) As `MaxPopulation`,
    MIN(`Population`) AS `MinPopulation`
FROM
    `country`
GROUP BY `Continent` order by `Continent`;

SELECT * FROM world.country;


SELECT
    `Continent`,
    COUNT(*) AS `CONTRIES`,
    SUM(`Population`) AS `Population`
FROM
    `country`
GROUP BY `Continent`;


SELECT * FROM world.country;


SELECT
    `Name`, JSON_ARRAYAGG(`Region`) AS `region`
FROM
    `country`
GROUP BY `Name`;


SELECT * FROM world.country;

SELECT
    `Name`, JSON_OBJECTAGG(`Region`, `Code`)
FROM
    `country`
GROUP BY `Name`;


SELECT `Name`,
         GROUP_CONCAT(`Region`) AS `region`
FROM `country`
GROUP BY `Name`;


SELECT
    `Name`,
    `Region`,
    MAX(`Population`) AS `Maxpoplation`,
    MIN(`Population`) AS `MinPopulation`
FROM
    `country`
GROUP BY `Population` ASC;

SELECT
    `Name`, `Population`,`Continent`, `GNP` ,COUNT(*) As `gnp`
FROM
    `country`
GROUP BY `Continent`
ORDER BY `Population` DESC;


SELECT * FROM world.country;

SELECT
    `Name`, `Region`, `LifeExpectancy`, `Capital`, `Population`
FROM
    `country`
GROUP BY `Capital`
HAVING `Capital` < 100
ORDER BY `Population` DESC;

SELECT * FROM world.country;


SELECT
    `Region`,
    SUM(`Population`) AS `SumPopulation`,
    COUNT(*) AS `cities`
FROM
    `country`
GROUP BY `Region` DESC;

SELECT * FROM world.country;

SELECT
    `Region`,
    `GNPOld`,
    `Continent`,
    SUM(`GNPOld`) AS `soloto`,
    COUNT(*) AS `count`
FROM
    `country`
GROUP BY `Continent`
ORDER BY `Region` DESC;


SELECT * FROM world.city;

SELECT `Name`,`Population` FROM `city` WHERE `Population` > (SELECT AVG(`Population`) FROM `city`);

CREATE DATABASE `bank`;

Explain `persons`;

Explain `custumers`;

INSERT INTO `persons`(`first_name`,`last_name`,`phone_number`) VALUES
('yura','bahlay','112323');

INSERT INTO `custumers` (`custumer_type`,`person_id`) VALUES
('a',(Select `id` FROM `persons` WHERE `first_name` = 'yura' and `last_name` = 'bahlay' ));

SELECT * FROM `custumers`;

