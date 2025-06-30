-- Insert sample data into Customers
INSERT INTO Customers (CustomerID, Name, City) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston');

-- Insert sample data into Orders
INSERT INTO Orders (OrderID, CustomerID, Product, Amount) VALUES
(101, 1, 'Laptop', 1200.00),
(102, 1, 'Mouse', 25.50),
(103, 2, 'Keyboard', 45.00),
(104, 3, 'Monitor', 320.00),
(105, 5, 'Webcam', 80.00); -- Note: CustomerID 5 does not exist in Customers