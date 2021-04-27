DELIMITER $$
CREATE PROCEDURE GetProducers()
BEGIN
	SELECT
		producer_id,
		name_producer
	FROM
		producer
	ORDER BY producer.name_producer;
END$$
DELIMITER ;

CALL GetProducers();

DROP PROCEDURE IF EXISTS GetProducers;

SHOW WARNINGS;

SHOW PROCEDURE STATUS WHERE db = 'learn_sql_mysql';

DELIMITER $$

CREATE PROCEDURE GetProducersByName(
	IN producer_name VARCHAR(255)
)
BEGIN
	SELECT *
 	FROM producer
	WHERE producer.name_producer = producer_name;
END$$

DELIMITER ;

DROP PROCEDURE GetProducersByName;

CALL GetProducersByName('Yura');

DELIMITER $$
CREATE PROCEDURE GetProducersByNameOut(
	IN producer_name VARCHAR(255),
    OUT producer_id_out INT(11)
)
BEGIN
	SELECT COUNT(producer.producer_id)
    INTO producer_id_out
 	FROM producer
	WHERE producer.name_producer = producer_name;
END$$
DELIMITER ;

DROP PROCEDURE GetProducersByNameOut;

CALL GetProducersByNameOut('Nastia', @producer_id_out);
SELECT @producer_id_out;


DELIMITER $$
CREATE PROCEDURE SetCounter(
	INOUT counter INT,
    IN inc INT
)
BEGIN
	SET counter = counter + inc;
END$$
DELIMITER ;


SET @counter = 1;
CALL SetCounter(@counter,1);
CALL SetCounter(@counter,1);
CALL SetCounter(@counter,5);
SELECT @counter;


DELIMITER $$
CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL(10,2) DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    END IF;
END$$
DELIMITER ;


CALL GetCustomerLevel(141, @level);
SELECT @level;


DELIMITER $$
CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSE
        SET pCustomerLevel = 'NOT PLATINUM';
    END IF;
END$$
DELIMITER ;


CALL GetCustomerLevel(447, @level);
SELECT @level;


DELIMITER $$
CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSEIF credit <= 50000 AND credit > 10000 THEN
        SET pCustomerLevel = 'GOLD';
    ELSE
        SET pCustomerLevel = 'SILVER';
    END IF;
END $$
DELIMITER ;

CALL GetCustomerLevel(447, @level);
SELECT @level


DELIMITER $$
CREATE PROCEDURE GetCustomerShipping(
	IN  pCustomerNUmber INT,
	OUT pShipping       VARCHAR(50)
)
BEGIN
    DECLARE customerCountry VARCHAR(100);

SELECT
    country
INTO customerCountry FROM
    customers
WHERE
    customerNumber = pCustomerNUmber;

    CASE customerCountry
		WHEN  'USA' THEN
		   SET pShipping = '2-day Shipping';
		WHEN 'Canada' THEN
		   SET pShipping = '3-day Shipping';
		ELSE
		   SET pShipping = '5-day Shipping';
	END CASE;
END$$
DELIMITER ;


CALL GetCustomerShipping(112,@shipping);

SELECT @shoping;


DELIMITER $$
CREATE PROCEDURE GetDeliveryStatus(
	IN pOrderNumber INT,
    OUT pDeliveryStatus VARCHAR(100)
)
BEGIN
	DECLARE waitingDay INT DEFAULT 0;
    SELECT
		DATEDIFF(requiredDate, shippedDate)
	INTO waitingDay
	FROM orders
    WHERE orderNumber = pOrderNumber;

    CASE
		WHEN waitingDay = 0 THEN
			SET pDeliveryStatus = 'On Time';
        WHEN waitingDay >= 1 AND waitingDay < 5 THEN
			SET pDeliveryStatus = 'Late';
		WHEN waitingDay >= 5 THEN
			SET pDeliveryStatus = 'Very Late';
		ELSE
			SET pDeliveryStatus = 'No Information';
	END CASE;
END$$
DELIMITER

CALL GetDeliveryStatus(10100,@delivery);


DELIMITER $$
CREATE PROCEDURE LoopDemo()
BEGIN
	DECLARE x INT;
	DECLARE str  VARCHAR(255);

	SET x = 1;
	SET str =  '';

	loop_label: LOOP
		IF  x > 10 THEN
			LEAVE  loop_label;
		END  IF;

		SET  x = x + 1;
		IF  (x mod 2) THEN
			ITERATE  loop_label;
		ELSE
			SET  str = CONCAT(str,x,',');
		END  IF;
	END LOOP;
	SELECT str;
END$$
DELIMITER ;


CALL LoopDemo();


DELIMITER $$
CREATE FUNCTION Country(
	name_country VARCHAR(10)
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE countryLevel VARCHAR(20);
    IF name_country = 'Italy' THEN
		SET countryLevel = name_country;
    ELSEIF (name_country = 'Ukraine') THEN
        SET countryLevel = 'GOLD';
    END IF;
	RETURN (countryLevel);
END$$
DELIMITER ;

DROP FUNCTION Country;

SHOW FUNCTION STATUS
WHERE db = 'learn_sql_mysql';

SELECT name ,
  Country('Italy')
FROM country;

SHOW WARNINGS;

