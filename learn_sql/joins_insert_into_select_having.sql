SELECT * FROM `persons`;
SELECT * FROM `custumers`;
SELECT * FROM `companies`;


INSERT INTO `persons` (`first_name`,`last_name`,`phone_number`) VALUES
('Nazar1', 'Mykhail1iv`', '068286741`');


INSERT INTO `persons` (`first_name`,`last_name`,`phone_number`) VALUES
('yuriy', 'Bahlay', '0636345830');


INSERT INTO `companies` (`company_name`,`phone`,`email`,`contact_title`) VALUES
('sovt_serve','3806363458','yra.bahlay@gmail.com','tuoso');

INSERT INTO `companies` (`company_name`,`phone`,`email`,`contact_title`) VALUES
('epam','3806342222','yura.bahlay@gmail.com','tuoso');


INSERT INTO `custumers` (`custumer_type`,`persons_id`,`companies_id`) VALUES
('b',
(SELECT `id` FROM `persons` WHERE `first_name` = 'yura' and `last_name` = 'bahlay'),
(SELECT `companies_id` FROM `companies` WHERE `company_name` = 'sovt_serve'));


INSERT INTO `custumers` (`custumer_type`,`persons_id`,`companies_id`) VALUES
('b',
(SELECT `id` FROM `persons` WHERE `first_name` = 'nazar' and `last_name` = 'mykhailiv'),
(SELECT `companies_id` FROM `companies` WHERE `company_name` = 'sovt_serve'));


SELECT
    `p`.`first_name`,
    `p`.`last_name`,
    `p`.`phone_number`,
    `c`.`custumer_type`,
    `com`.`company_Name`
FROM
    `custumers` AS `c`
	 INNER JOIN
    `persons` AS `p` ON `c`.`persons_id` = `p`.`id`
	 INNER JOIN
	`companies` as `com` ON `c`.`companies_id` = `com`.`companies_id`;




SELECT * FROM `account_types`;
SELECT * from `persons`;
SELECT * FROM `custumers`;
SELECT * FROM `companies`;
SELECT * FROM `accounts`;

INSERT INTO `account_types` (`type_id`,`type_name`,`desk`,`rate_range`) VALUES
('1','simple','ukraina',11);

INSERT INTO `account_types` (`type_id`,`type_name`,`desk`,`rate_range`) VALUES
('2','difficult','england',22);

INSERT INTO `account_types` (`type_id`,`type_name`,`desk`,`rate_range`) VALUES
('3','bag','italija',22);




INSERT INTO `companies` (`company_name`,`phone`,`email`,`contact_title`) VALUES
('Epam','38097223344','epam@gmail.com','sovt');

INSERT INTO `companies` (`company_name`,`phone`,`email`,`contact_title`) VALUES
('SovtServ','38097443322','sovtserve@gmail.com','epam');




INSERT INTO `persons` (`first_name`,`last_name`,`phone_number`) VALUES
('yura', 'bahlay', '0636345830');

INSERT INTO `persons` (`first_name`,`last_name`,`phone_number`) VALUES
('vitaliy', 'batyk', '0630560487');

INSERT INTO `persons` (`first_name`,`last_name`,`phone_number`) VALUES
('vova', 'steckiv', '0984913956');





INSERT INTO `custumers` (`custumer_type`,`persons_id`,`companies_id`) VALUES
('c',
(SELECT `id` FROM `persons` WHERE `first_name` = 'yura' and `last_name` = 'bahlay'),
(SELECT `companies_id` FROM `companies` WHERE `company_name` = 'SovtServ'));


INSERT INTO `custumers` (`custumer_type`,`persons_id`,`companies_id`) VALUES
('a',
(SELECT `id` FROM `persons` WHERE `first_name` = 'vitaliy' and `last_name` = 'batyk'),
(SELECT `companies_id` FROM `companies` WHERE `company_name` = 'epam'));


INSERT INTO `custumers` (`custumer_type`,`persons_id`,`companies_id`) VALUES
('b',
(SELECT `id` FROM `persons` WHERE `first_name` = 'vova' and `last_name` = 'steckiv'),
(SELECT `companies_id` FROM `companies` WHERE `company_name` = 'Epam'));




INSERT INTO `accounts`(`branch_id`,`custumer_id`,`balanse`,`rate`,`status`,`acc_type`)VALUES
(1,
(SELECT `custumer1_id` FROM `custumers` WHERE `custumer_type` = 'a' AND
`persons_id`= (SELECT `id` FROM `persons` WHERE `first_name`= 'vitaliy' and `last_name` = 'batyk') AND
`companies_id` = (SELECT `companies_id` FROM  `companies` WHERE `company_name` = 'Epam')
),
12.3,11.4,'actuvnuy',
(SELECT `type_id` FROM `account_types` WHERE `type_id` = '1' AND `desk` = 'ukraina')
);

SELECT * FROM `accounts`;
SELECT * FROM `account_types`;
SELECT * from `persons`;
SELECT * FROM `custumers`;
SELECT * FROM `companies`;


INSERT INTO `accounts` (`branch_id`,`acc_type`,`custumer_id`,`balanse`,`rate`,`status`)VALUES
(
2,
(SELECT `type_id` FROM `account_types` WHERE `type_name` = 'simple'),
(SELECT `custumer1_id` FROM `custumers` WHERE `custumer_type` = 'b' AND
`persons_id`= (SELECT `id` FROM `persons` WHERE `first_name` = 'vova' and `last_name` = 'steckiv') AND
`companies_id` = (SELECT `companies_id` FROM `companies` WHERE `company_name` = 'Epam')
),
10,12.1,'Actuvnuy'
);


INSERT INTO `accounts` (`branch_id`,`acc_type`,`custumer_id`,`balanse`,`rate`,`status`)VALUES
(
3,
(SELECT `type_id` FROM `account_types` WHERE `type_name` = 'difficult'),
(SELECT `custumer1_id` FROM `custumers` WHERE `custumer_type` = 'c' AND
`persons_id`= (SELECT `id` FROM `persons` WHERE `first_name` = 'yura' and `last_name` = 'bahlay') AND
`companies_id` = (SELECT `companies_id` FROM `companies` WHERE `company_name` = 'SovtServ')
),
22,10.2,'Neactuvnuy'
);






SELECT * from `persons`;
SELECT * FROM `custumers`;
SELECT * FROM `companies`;
SELECT * FROM `acaccountscounts`;
SELECT * FROM `account_types`;



Select
`pe`.`first_name`,
`pe`.`last_name`,
`ac`.`balanse`,
`com`.`company_name`,
`ac`.`custumer_id`,
`ac_type`.`type_name`

FROM `accounts` AS `ac`
INNER JOIN `custumers` AS `cu` ON `ac`.`custumer_id` = `cu`.`custumer1_id`
INNER JOIN `persons` AS `pe` ON `cu`.`persons_id` = `pe`.`id`
INNER JOIN `companies`AS `com` ON `cu`.`companies_id` =`com`.`companies_id`
INNER JOIN `account_types` AS `ac_type` ON `ac`.`acc_type` = `ac_type`.`type_id`;








insert into `productlines` values
('iphone','by','12','8');

select * from `productlines`;

insert into `products` values
(5,'yura','samsung','phone',3,10,2,(select `productLine` from `productlines` where `productLine` = 'iphone'));

select * from `products`;

insert into `orderdetetalis` values
(1,12.0,3,(select `productCode` from `products` where `productCode` = '5'),1);

select * from `orderdetetalis`;

insert into `custumers`  values (5,'yuriygold121','yura1','bahlay1','06363415830','lviv','ukraine');

select * from`custumers` ;

insert into `orders` values(1,'09-04-05','09-04-05','12-04-05','active','comments',1);

select * from `orders` ;

insert into `payment` values
(1,'09-04-05',11,1);

select * from `payment`;



insert into `productlines` values
('samsung','mobile_phone','opus_mobile','1');

select * from `productlines`;

insert into `products` values
(13,'G-2','samsung','phone',2,0,10.2,(select `productLine` from `productlines` where `productLine` = 'samsung'));

select * from `products`;

insert into `orderdetetalis` values
(1,25.0,3,(select `productCode` from `products` where `productCode` = '13'),6);

select * from `orderdetetalis`;

insert into `custumers`  values (2,'nastjagold12','nastja','bahla','0636345670','lviv','ukraine');

select * from`custumers` ;

insert into `orders` values(6,'09-04-05','09-04-05','12-04-05','active','comments',2);

select * from `orders` ;

insert into `payment` values
(2,'09-04-05',6,2);



select * from `payment`;
select * from `productlines`;
select * from `products`;
select * from `orderdetetalis`;
select * from`custumers` ;
select * from `orders` ;
select * from `payment`;


Select
`pr`.`productName`,
`pr`.`productCode`
FROM `products` as `pr`
INNER JOIN `orderdetetalis` as `orDet` on `pr`.`productCode` = `orDet`.`productCode` where `orDet`.`orderNumber` = 6;


SELECT
    `or`.`orderNumber`,
    `or`.`orderDate`,
    `or`.`requiredDate`,
    COUNT(*) AS `CountProduct`
FROM
    `orders` AS `or`
	INNER JOIN `orderdetetalis` AS `orDet` ON `orDet`.`orderNumber` = `or`.`orderNumber`
GROUP BY `or`.`orderNumber`
HAVING `CountProduct` >= 2;


 SELECT
    `orDet`.`productCode`,
    `pr`.`productCode`,
    `pr`.`productName`,
    `pr`.`quantityinStock`,
    `pr`.`byPrice`,
    COUNT(*) AS `count`
FROM
    `products` AS `pr`
	INNER JOIN `orderdetetalis` AS `orDet` ON `orDet`.`productCode` = `pr`.`productCode`
GROUP BY `pr`.`productCode`
HAVING `pr`.`quantityinStock` = 0;

select * from `products`;
select * from `orderdetetalis`;


