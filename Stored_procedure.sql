-- STORED PROCEDURE:
CREATE TABLE test (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);
INSERT INTO test (id, name, age, salary)
VALUES 
(1, 'Alice', 25, 50000),
(2, 'Bob', 30, 60000),
(3, 'Charlie', 35, 70000),
(4, 'David', 28, 65000),
(5, 'Eva', 40, 80000);

-- Creating stored procedure
CREATE PROCEDURE GetEmployeesBySalary
    @min_salary DECIMAL(10, 2)
AS
BEGIN
    SELECT id, name, age, salary
    FROM test
    WHERE salary > @min_salary;
END;

-- Executing stored procedure
EXEC GetEmployeesBySalary @min_salary = 60000;

