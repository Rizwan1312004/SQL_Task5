# SQL_Task5

# SQL Database: Customer Orders Management
* Overview
This SQL script defines a simple customer order management system using two related tables:

Customers: Stores customer information.

cus_Orders: Stores orders placed by customers.

It includes table creation, data insertion, and different types of SQL joins to extract relevant data for reporting and analysis.

# Tables Defined
1. Customers
Holds customer information.

Column	Data Type	Description
CustomerID	INT (PK)	Unique ID for each customer
CustomerName	VARCHAR(100)	Full name
Email	VARCHAR(100)	Email address
City	VARCHAR(50)	City of residence
JoinDate	DATE	Date the customer joined

2. cus_Orders
Stores orders placed by customers.

Column	Data Type	Description
OrderID	INT (PK)	Unique ID for each order
CustomerID	INT (FK)	Linked to Customers table
OrderDate	DATE	Date of order
Amount	DECIMAL(10,2)	Order amount
current_Status	VARCHAR(20)	Status of the order (e.g., Shipped, Pending)

# Sample Data
Customers Table
6 sample customers inserted, from various cities, with join dates ranging from 2023 to 2025.

cus_Orders Table
6 sample orders across different customers, with varied order dates, amounts, and statuses.
