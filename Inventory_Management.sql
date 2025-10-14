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
  

INSERT INTO Products (Product_ID, Product_Name, Categories, Prices, Stock_Quantity)
VALUES (1, 'Laptop', 'Electronic-Gadget', 80000, 10),
VALUES (2, 'Headphones', 'Accesories', 15000, 7),
VALUES (3, 'Speaker', 'Accesories', 20000, 9);


