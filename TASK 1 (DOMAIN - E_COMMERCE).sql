CREATE DATABASE E_Commerce;
USE E_Commerce;

CREATE TABLE Customer(
   Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
   Customer_Name VARCHAR(100),
   Email VARCHAR(100),
   Address VARCHAR(200)
);

CREATE TABLE Product(
   Product_ID INT PRIMARY KEY AUTO_INCREMENT,
   Product_Name VARCHAR(100),
   Price DECIMAL(10,2),
   Product_Quantity INT
);

CREATE TABLE OrderTable(
   Order_ID INT PRIMARY KEY AUTO_INCREMENT,
   Customer_ID INT,
   Order_Date DATE,
   Total_Amount DECIMAL(10,2),
   FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE OrderDetails(
   Order_Detail_ID INT PRIMARY KEY AUTO_INCREMENT,
   Order_ID INT,
   Product_ID INT,
   Quantity INT,
   UnitPrice DECIMAL(10, 2),
   FOREIGN KEY (Order_ID) REFERENCES OrderTable(Order_ID),
   FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
   
CREATE TABLE Payment(
   Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
   Order_ID INT,
   PaymentDate DATE,
   PaymentMode VARCHAR(50),
   FOREIGN KEY (Order_ID) REFERENCES OrderTable(Order_ID)
);

   
   