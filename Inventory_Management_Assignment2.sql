------------------------------------Create sql scripts to create the tables for Inventory Management-------------------------------------------------------
CREATE database Inventory_Management;

CREATE TABLE Products (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Categories VARCHAR2(20) NOT NULL,
    Prices FLOAT CHECK (Prices > 0),
    Stock_Quantity NUMBER DEFAULT 0
);

CREATE TABLE Customers (
    Customer_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(20) NOT NULL,
    Last_Name VARCHAR2(20) NOT NULL,
    Email_ID VARCHAR2(20) UNIQUE,
    Phone_Number VARCHAR2(20)
);
CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Order_date DATE DEFAULT SYSDATE,
    Order_Price FLOAT CHECK (Order_Price > 0),
    CONSTRAINT fk_Cust FOREIGN KEY (Order_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE
);

CREATE TABLE Order_Details (
    Ord_Details_ID NUMBER PRIMARY KEY,
    Quantities Number(10) CHECK(Quantities > 0),
    CONSTRAINT fk_Ord FOREIGN KEY (ord_details_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE,
    CONSTRAINT fk_Prod FOREIGN KEY (ord_details_ID) REFERENCES Products(Product_ID) ON DELETE CASCADE
  );
  

-- Inserting Values Into Products TABLE
INSERT INTO Products VALUES (101, 'Laptop', 'Electronics', 55000, 25);
INSERT INTO Products VALUES (102, 'Headphones', 'Accessories', 2500, 50);

-- Inserting Values Into Customers TABLE
INSERT INTO Customers VALUES (201, 'John', 'Doe', 'johndoe26@gmail.com', '9876543120');
INSERT INTO Customers VALUES (202, 'David', 'Brown', 'davidbrown8@example.com', '9123456780');

-- Inserting Values Into Orders TABLE
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount) VALUES (301, 201, SYSDATE, 0);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount) VALUES (302, 202, SYSDATE, 0);

-- Inserting Values Into OrderDetails TABLE
INSERT INTO OrderDetails VALUES (401, 301, 101, 1);
INSERT INTO OrderDetails VALUES (402, 302, 102, 2

--QUERY 1: Retrieve products with low stock (eg: less than 20 units)
SELECT *
FROM Products
WHERE Stock_Quantity < 20;

-- QUERY 2: Calculate the total amount spent by each customer
SELECT C.Customer_ID, SUM(O.Total_Amount) as Amount_Spent
FROM Customers C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID;


-- QUERY 3: Update product stock quantities after orders are placed to reflect purchased items

