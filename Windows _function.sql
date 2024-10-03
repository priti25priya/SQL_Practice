-- WINDOWS FUNCTIONS: 
CREATE TABLE employees2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);
INSERT INTO employees2 (id, name, age, salary, department)
VALUES 
(1, 'Alice', 25, 50000, 'HR'),
(2, 'Bob', 30, 60000, 'HR'),
(3, 'Charlie', 35, 70000, 'IT'),
(4, 'David', 28, 65000, 'IT'),
(5, 'Eva', 40, 80000, 'Finance'),
(6, 'Frank', 45, 85000, 'Finance');

-- Query to find average salary of employees for each department and order employees by age within each department.
SELECT name,age,salary,
AVG(salary) OVER (PARTITION BY department ORDER BY age) AS Avg_Salary
FROM employees2;

-- Query using ranking functions.
SELECT 
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS emp_row_no,
name,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS emp_rank,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS emp_dense_rank
FROM employees2;
