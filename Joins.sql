/*  Retrieve all data form customers and orders in two diffrent results...
*/ -- No JOIN -- 

SELECT *
FROM customers;

SELECT *
FROM orders;

-- INNER JOIN -- Only return matching rows from both tables

SELECT id,
       first_name,
       country,
       score,
       order_id,
       sales
FROM customers
INNER JOIN orders
ON id = customer_id

-- LEFT JOIN -- Returns all rows from left table and Only matching from right table

SELECT id,
       first_name,
       country,
       score,
       order_id,
       sales
FROM customers
LEFT JOIN orders
ON id = customer_id

-- RIGHT JOIN -- Returns all rows from right table and Only matching from left table

SELECT id,
       first_name,
       country,
       score,
       order_id,
       sales
FROM customers
RIGHT JOIN orders
ON id = customer_id

-- FULL JOIN -- Returns all rows from both table

SELECT id,
       first_name,
       country,
       score,
       order_id,
       sales
FROM customers
FULL JOIN orders
ON id = customer_id