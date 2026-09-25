-- left Anti join -- Returns row from left that has No Match in Right 

SELECT *
FROM customers

SELECT *
FROM orders


SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

-- right Anti join -- Returns row from right that has No Match in left

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

-- full anti join -- Returns only rows that don't match in either table

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL

/*
Get all customers along with their orders, but only for customers who have place any order (Without using INNER JOIN)
*/

SELECT *
FROM customers as c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL






