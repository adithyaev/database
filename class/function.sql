-- aggregate function

SELECT AVG(cost) AS average_price  FROM items;

SELECT SUM(cost) FROM items;

SELECT MAX(cost) AS most_expensive_product FROM items;

SELECT MIN(cost) AS cheapest_product_price FROM items;

SELECT COUNT(*) AS total_product FROM items;

SELECT COUNT(pk_product_id) AS total_product FROM items;

SELECT UPPER(product_name) FROM items;

SELECT LOWER(product_name) FROM items;

SELECT product_name, LENGTH(product_name) FROM items;

SELECT SUBSTRING(product_name,2,4) AS extracted_string FROM items;

SELECT ROUND(cost) FROM items;

SELECT NOW();

SELECT date_part('year',added_date) FROM items;

SELECT date_part('month',added_date) FROM items;

SELECT date_part('day',added_date) FROM items;

SELECT added_date,COUNT(*) FROM items GROUP BY added_date;

SELECT added_date,COUNT(*) FROM items GROUP BY added_date HAVING added_date<'2023-08-01';


