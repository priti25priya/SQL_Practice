-- DML(DATA MANIPULAION LANGUAGE)

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT CHECK (Age >= 0 AND Age <= 99),
    Phone VARCHAR(15)
);

--INSERT COMMAND

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23','+xxxxxxxxxxxx'),
       (2, 'Aman ', 'Chopra', 'Australia','21','xxxxxxxxxxxx'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka','24','xxxxxxxxxxxx'),
       (4, 'Aditya', 'Arpan', 'Austria','21','xxxxxxxxxxxx'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','xxxxxxxxxxxx');

-- UPDATE COMMAND
UPDATE Customer 
SET Phone = '+91675554537' 
WHERE CustomerID = 1;
UPDATE Customer
SET Phone = CASE
    WHEN CustomerID = 2 THEN '+617833542223'
    WHEN CustomerID = 3 THEN '+947622322547'
    WHEN CustomerID = 4 THEN '+438999265429'
    WHEN CustomerID = 5 THEN '+348766544124'
END
WHERE CustomerID IN (2, 3, 4, 5);


SELECT * FROM Customer;

-- DELETE COMMAND
DELETE FROM Customer
WHERE Age = 21;