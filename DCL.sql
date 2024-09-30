-- DCL(DATA CONTROL LANGUAGE)
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,         -- Unique identifier for each employee
    FirstName VARCHAR(50) NOT NULL,    -- First name of the employee
    LastName VARCHAR(50) NOT NULL,     -- Last name of the employee
    Email VARCHAR(100),                 -- Email address of the employee
    Department VARCHAR(50)              -- Department of the employee
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Department)
VALUES 
    (1, 'John', 'Doe', 'john.doe@gmail.com', 'Finance'),
    (2, 'Jane', 'Smith', 'jane.smith@yahoo.com', 'Human Resources'),
    (3, 'Alice', 'Johnson', 'alice.johnson@yahoo.com', 'IT'),
    (4, 'Bob', 'Brown', 'bob.brown@gmail.com', 'Marketing'),
    (5, 'Charlie', 'Davis', 'charlie.davis@gmail.com', 'Sales');

CREATE LOGIN user1 WITH PASSWORD = 'YourStrongPasswordHere';  -- For SQL Server
CREATE USER user1 FOR LOGIN user1;                             -- For SQL Server
-- DCL(DATA CONTROL LANGUAGE):
-- Grant permissions to user1
GRANT SELECT, INSERT, UPDATE ON Employees TO user1;  -- Granting SELECT, INSERT, and UPDATE permissions

-- Revoke INSERT and UPDATE permissions from user1
REVOKE INSERT, UPDATE ON Employees FROM user1;  -- Revoking INSERT and UPDATE permissions
