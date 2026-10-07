-- Rules of Set Operators -- 

/* Set Operations in SQL combine the results of multiple queries into a single result set */

/* #1 RULE | SQL CLAUSES (Order By can be used only once)

- SET Operator can be used almost in all clauses WHERE | JOIN | GROUP BY | HAVING
- ORDER BY is allowed only once at the end of query */

/* #2 RULE | NUMBER OF COLUMNS (Same number of columns)
The number of columns in each query must be the same

#3 RULE | DATA TYPES (Matching Data types)
Data types of columns in each query must be Matching/compatible

#4 RULE | ORDER OF COLUMNS (Same order of columns)
The order of columns in each query must be same

#5 RULE | COLUMN ALIASES (First query controls Aliases)
The column names in the result set are determined by the column names specified in the first query.

*/

SELECT
CustomerID AS ID,
LastName AS Last_Name
FROM Sales.Customers
UNION
SELECT
EmployeeID,
LastName
FROM Sales.Employees

/*
#6 RULE | CORRECT COLUMNS (Mapping Correct Columns)
- Even if all rules are met and sql shows no errors, the result may be incorrect.
- Incorrect column selection leads to inaccurate results.
*/

SELECT
FirstName,
LastName
FROM Sales.Customers
UNION
SELECT
FirstName,
LastName
FROM Sales.Employees

-- UNION --
-- Returns all district rows from both queries.
--Removes duplicate rows from result.

-- Combines the data from  employees and customers into one table

SELECT 
FirstName,
LastName
FROM Sales.Customers
UNION
SELECT
FirstName,
LastName
FROM Sales.Employees

-- UNION ALL 
-- It's generally faster than UNION
-- Returns all rows from both queries, including duplicates.

SELECT 
FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT
FirstName,
LastName
FROM Sales.Employees

-- EXCEPT - Returns unique rows in 1st table that are not in 2nd table
-- Returns all distinct rows from the first query that are not found in the second query.
-- It is the only one where the order of queries affects the final result

SELECT 
FirstName,
LastName
FROM Sales.Customers
EXCEPT
SELECT
FirstName,
LastName
FROM Sales.Employees

-- INTERSECT - Returns only rows that are common in both queries

SELECT 
FirstName,
LastName
FROM Sales.Customers
INTERSECT
SELECT
FirstName,
LastName
FROM Sales.Employees

-- Orders data are stored in sperate tables (Orders and OrdersArchive).
-- Combine all orders data into one report without duplicates.

-- Best Practices -> Never Use an astrick(*) to combine tables, List needed columns instead

SELECT
    'Orders' AS SourceTable,
    [OrderID],
    [ProductID],
    [CustomerID],
    [SalesPersonID],
    [OrderDate],
    [ShipDate],
    [OrderStatus],
    [ShipAddress],
    [BillAddress],
    [Quantity],
    [Sales],
    [CreationTime]
FROM Sales.Orders
UNION
SELECT
    'OrdersArchive' AS SourceTable,
    [OrderID],
    [ProductID],
    [CustomerID],
    [SalesPersonID],
    [OrderDate],
    [ShipDate],
    [OrderStatus],
    [ShipAddress],
    [BillAddress],
    [Quantity],
    [Sales],
    [CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID


-- DATA COMPLETENESS CHECK
-- EXCEPT operator can be used to compare tables to detect discrepancies between databases.