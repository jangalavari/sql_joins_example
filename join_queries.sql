-- 1. INNER JOIN: Customers with Orders (only those with matching CustomerID)
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 2. LEFT JOIN: All Customers and their Orders (if any)
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 3. RIGHT JOIN: All Orders and their Customers (if any)
-- Note: SQLite does not support RIGHT JOIN. For MySQL:
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 4. FULL OUTER JOIN: All Customers and Orders, matched where possible
-- MySQL: Use FULL OUTER JOIN directly
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- For SQLite (which does not support RIGHT/FULL JOIN), simulate FULL OUTER JOIN:
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;