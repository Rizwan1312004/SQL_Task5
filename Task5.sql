CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE cus_Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    current_Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName, Email, City, JoinDate) VALUES
(1, 'Alice Smith', 'alice@example.com', 'New York', '2024-01-15'),
(2, 'Bob Johnson', 'bob@example.com', 'Los Angeles', '2023-11-02'),
(3, 'Charlie Lee', 'charlie@example.com', 'Chicago', '2023-07-20'),
(4, 'Diana King', 'diana@example.com', 'Miami', '2025-02-10'),
(5, 'Evan Young', 'evan@example.com', 'Seattle', '2024-06-05'),
(6, 'Fiona Adams', 'fiona@example.com', 'Houston', '2025-08-01');

INSERT INTO cus_Orders (OrderID, CustomerID, OrderDate, Amount, current_Status) VALUES
(101, 1, '2025-08-01', 120.50, 'Shipped'),
(102, 1, '2025-08-03', 75.00, 'Pending'),
(103, 2, '2025-08-05', 200.00, 'Delivered'),
(104, 3, '2025-08-06', 50.00, 'Cancelled'),
(106, 1, '2025-08-10', 150.00, 'Delivered'),
(107, 6, '2025-08-11', 89.99, 'Processing');

-- INNER JOIN
SELECT c.CustomerName, c.City, o.OrderID, o.OrderDate, o.Amount
FROM Customers c
INNER JOIN cus_Orders o ON c.CustomerID = o.CustomerID;

-- LEFT JOIN
SELECT c.CustomerName, c.Email, o.OrderID, o.Amount, o.current_Status
FROM Customers c
LEFT JOIN cus_Orders o ON c.CustomerID = o.CustomerID;

-- RIGHT JOIN
SELECT c.CustomerName, o.OrderID, o.OrderDate, o.Amount, o.current_Status
FROM Customers c
RIGHT JOIN cus_Orders o ON c.CustomerID = o.CustomerID;

-- FULL OUTER JOIN using UNION
SELECT c.CustomerName, o.OrderID, o.Amount
FROM Customers c
LEFT JOIN cus_Orders o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName, o.OrderID, o.Amount
FROM Customers c
RIGHT JOIN cus_Orders o ON c.CustomerID = o.CustomerID;
