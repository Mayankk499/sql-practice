/* Using SalesDB, Retrieve a list of all orders, along with the related customer, product,
and employee details. for each order, display: 
Order ID, Customer's name, Product Name, Sales, Price, Sales person's name */

SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName AS Customer_First_Name,
    c.LastName AS Customer_Last_Name,
    p.Product AS Product_name,
    p.Price,
    e.FirstName AS Employee_First_Name,
    e.LastName AS Employee_Last_Name
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID  = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID