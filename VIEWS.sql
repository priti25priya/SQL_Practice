-- VIEWS: A view in SQL is a virtual table that is based on the result of a SQL query. 
CREATE TABLE employees3 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);

INSERT INTO employees3 (id, name, age, salary, department)
VALUES 
(1, 'Alice', 25, 50000, 'HR'),
(2, 'Bob', 30, 60000, 'HR'),
(3, 'Charlie', 35, 70000, 'IT'),
(4, 'David', 28, 65000, 'IT'),
(5, 'Eva', 40, 80000, 'Finance'),
(6, 'Frank', 45, 85000, 'Finance');

-- Previuos statement ends with GO:
GO

CREATE VIEW HR_Employees AS
SELECT name, age, salary
FROM employees3
WHERE department = 'HR';

GO

SELECT * FROM HR_Employees;





