CREATE VIEW countryView
AS
SELECT
    country.country_id,
    country.name
FROM
    country;

SELECT * FROM countryview;


CREATE VIEW daysofweek (day) AS
    SELECT 'Mon'
    UNION
    SELECT 'Tue'
    UNION
    SELECT 'Web'
    UNION
    SELECT 'Thu'
    UNION
    SELECT 'Fri'
    UNION
    SELECT 'Sat'
    UNION
    SELECT 'Sun';

SELECT * FROM daysofweek;


SHOW TABLES;
SHOW FULL TABLES;


CREATE VIEW salePerOrder AS
    SELECT
        orderNumber,
        SUM(quantityOrdered * priceEach) total
    FROM
        orderDetails
    GROUP by orderNumber
    ORDER BY total DESC;



CREATE VIEW bigSalesOrder AS
    SELECT
        orderNumber,
        ROUND(total,2) as total
    FROM
        salePerOrder
    WHERE
        total > 60000;


SELECT
    orderNumber, total
    FROM
    bigSalesOrder;



CREATE OR REPLACE VIEW customerOrders AS
SELECT
    orderNumber,
    customerName,
    SUM(quantityOrdered * priceEach) total
FROM
    orderDetails
INNER JOIN orders o USING (orderNumber)
INNER JOIN customers USING (customerNumber)
GROUP BY orderNumber;

SELECT * FROM customerOrders
ORDER BY total DESC;



CREATE VIEW aboveAvgProducts AS
    SELECT
        productCode,
        productName,
        buyPrice
    FROM
        products
    WHERE
        buyPrice > (
            SELECT
                AVG(buyPrice)
            FROM
                products)
    ORDER BY buyPrice DESC;



CREATE VIEW officeInfo
 AS
   SELECT officeCode, phone, city
   FROM offices;

SELECT
    *
FROM
    officeInfo;

UPDATE officeInfo
SET
    phone = '+33 14 723 5555'
WHERE
    officeCode = 4;

SELECT
    *
FROM
    officeInfo
WHERE
    officeCode = 4;



SHOW FULL TABLES
WHERE table_type = 'VIEW';

