CREATE DATABASE ordering_system;

USE ordering_system;

CREATE TABLE customers(
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(100),
ContactName VARCHAR(100),
Address VARCHAR(100), 
City VARCHAR(80),	
PostalCode VARCHAR(10),
Country VARCHAR(40)
);

EXPLAIN customers;

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, "Toby Flunderson", "James", "Jammy Dogdger Avenue", "Scranton", "12209", "USA"),
(2, "Leslie Knope", "James", "Custard Cream Boulevard", "Pawnee", "05021", "USA"),
(3, "Dwight Schrute", "James", "Wagon Wheel Place", "Scranton", "122541", "USA"),
(4, "Donna Meagle", "James", "Leibniz Lane", "Pawnee", "05020", "USA"),
(5, "April Ludgate", "James", "Digestive Road", "Pawnee", "01756", "USA"),
(6, "Stanley Hudson", "James", "Hobnob Street", "Scranton","122554", "USA")
;

SELECT * FROM customers;


-- Create second table	

CREATE TABLE orders(
OrderID INT NOT NULL PRIMARY KEY,
CustomerID INT, 
ItemID INT NOT NULL,
ItemName VARCHAR(80)
);

EXPLAIN orders;

-- Updated column 
ALTER TABLE orders
ADD ProductPrice DECIMAL(6, 2);

EXPLAIN orders;

-- Add data
INSERT INTO orders (CustomerID, OrderID, ItemID, ItemName, ProductPrice)
VALUES
(6, 5021545, 32174524,  "Toaster",  17.99),
(3, 5021546, 45142548, "Set of 3 Nested Tables", 105.99),
(3, 5021547, 87413547, "Electric Toothbrush", 45.99),
(1, 5021548, 24586596, "4 Person Tent", 220.99),
(4, 5021549, 47512543, "Upright Fan", 41.99),
(5, 5021550, 73519487, "Henry Hoover", 111.99)
;

SELECT * FROM orders;

-- Updated price of Henry Hoover 
UPDATE orders
SET ProductPrice = 119.99
WHERE OrderID = 5021550;

SELECT * FROM orders;

-- Joining tables

SELECT customers.CustomerName , orders.OrderID
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID;

-- selecting data 
SELECT *
FROM customers
INNER JOIN orders
WHERE customers.CustomerID = orders.CustomerID AND orders.ItemName = "Toaster";

-- select using comparison operators
SELECT * FROM orders
WHERE ProductPrice between 35 and 120;

-- Update customer name 
UPDATE customers
SET CustomerName = 'Pam Beesley'
WHERE CustomerId = 4;

SELECT * FROM customers;

drop database cars;

