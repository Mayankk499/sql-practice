-- String functions -- 
-- --------------------------------------- MANIPULATION ----------------------------------------

/* 1. CONCAT -> Combines multiple strings into one 

Q1 - Concatenate first name and country into one column

*/

SELECT first_name,
country,
CONCAT (first_name, '_',country) AS name_country
FROM customers

-- LOWER -> Converts all character into lowercase

SELECT first_name,
country,
CONCAT (first_name, '_',country) AS name_country,
LOWER (first_name) AS lower_name
FROM customers

-- UPPER -> Converts all character into uppercase

SELECT first_name,
country,
CONCAT (first_name, '_',country) AS name_country,
UPPER (country) AS upper_name
FROM customers

-- TRIM -> Removes leading and trailing spaces (remove Extra space in data)
-- Find customers whose first name contains leading or trailing spaces

SELECT first_name,
LEN(first_name) AS len_count,
LEN(TRIM(first_name)) AS Total_len
FROM customers
-- WHERE first_name != TRIM(first_name)

-- REPLACE -> Replaces specific character with a new character

SELECT 
'123-456-7890' AS phn,
REPLACE('123-456-7890', '-', '') AS Clean_phn

-- --------------------------------------- CALCULATION ----------------------------------------

-- LEN -> Counts how many characters

SELECT first_name AS Value,
LEN(first_name) AS total_count
FROM customers

-- --------------------------------------- STRING EXTRACTION ----------------------------------------

-- LEFT -> Extracts specific Number of Characters from the start

SELECT first_name AS Value,
LEFT(first_name, 2) AS left_Extracted_value
FROM customers

-- RIGHT -> Extracts specific Number of Characters from the end

SELECT first_name AS Value,
RIGHT(first_name, 2) AS right_Extracted_value
FROM customers

-- SUBSTRING -> Extracts a part of string at a specified position -> SUBSTRING(Value, start, length)

SELECT first_name AS Value,
SUBSTRING(TRIM(first_name), 2) AS Sub_Extracted_value
FROM customers
