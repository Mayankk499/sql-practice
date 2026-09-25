-- this is a comment

SELECT *
FROM customers

SELECT *
FROM orders

SELECT first_name,
score,
country
FROM customers


SELECT *
FROM customers
WHERE country = 'Germany'


SELECT *
FROM customers
ORDER BY score ASC


SELECT country,
SUM(score) AS total_score,
COUNT(id) AS total_customers
from customers
GROUP BY country

SELECT country,
SUM(score) AS total_score,
COUNT(id) AS total_customers
from customers
GROUP BY country
HAVING SUM(score) > 800

/*CREATE TABLE persons (
   id INT NOT NULL,
   person_name VARCHAR(50) NOT NULL,
   birth_date DATE,
   phone VARCHAR(15) NOT NULL,
   CONSTRAINT pk_persons PRIMARY KEY (id)
)*/

SELECT * FROM persons


ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

SELECT * FROM persons

ALTER TABLE persons
DROP COLUMN phone

SELECT * FROM persons

Drop table persons

INSERT INTO customers (id, first_name, country, score)
VALUES (3, 'Dani', 'USA', 1150)

SELECT * FROM customers

-- Insert data from 'customers' into 'persons' 

/*INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers*/

-- DML Data manupulation language -- UPDATE --

SELECT * FROM customers

UPDATE customers
SET score = 850
WHERE id = 5

UPDATE customers
SET first_name = 'Angela'
WHERE first_name = 'Anna'

UPDATE customers
SET first_name = 'Violet'
WHERE id = 7

UPDATE customers
SET country = 'Mexico',
score = 950
WHERE id = 7

UPDATE customers
SET country = 'Australiya',
score = 650
WHERE id = 6

UPDATE customers
SET score = 0
WHERE score IS null

-- DML DELETE --- 

SELECT * FROM customers 

DELETE FROM customers
WHERE id = 9

SELECT * FROM customers
WHERE country = 'USA' OR score > 500

-- BETWEEN -- Check if a value is within a range

SELECT *
FROM customers
WHERE score BETWEEN 500 AND 900

-- IN -- Check if a value exists a list

SELECT *
FROM customers
WHERE country IN ('Germany', 'USA')

-- LIKE -- Search for a pattern in text

SELECT *
FROM customers
WHERE first_name LIKE '%n'