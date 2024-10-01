--SQL OPERATORS:
CREATE TABLE employees1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees1 (id, name, age, salary, department_id) VALUES
(1, 'Alice', 30, 5000.00, 101),
(2, 'Bob', 22, 3000.00, 102),
(3, 'Charlie', 25, 4000.00, 103),
(4, 'Diana', 28, 5500.00, 101),
(5, 'Eve', 35, 6500.00, 102),
(6, 'Hammy',26, 7000.00,104),
(7, 'Olivia',24,6000.00,105);


--1. Arithmetic operators:
--1.1. +:
SELECT name, salary, salary + 500 AS salary_with_bonus
FROM employees1;

--1.2. -:
SELECT name, salary, salary - (salary * 0.10) AS salary_after_tax
FROM employees1;

--1.3. /:
SELECT name, salary, salary / 2 AS half_salary
FROM employees1;

--1.4. *:
SELECT name, salary, salary * 1.05 AS increased_salary
FROM employees1;


--1.5. %:
SELECT name, salary, salary % 1000 AS remainder
FROM employees1;


--2. Comparison operators:
--2.1. ==:
SELECT name, age
FROM employees1
WHERE age = 30;


--2.2. >:
SELECT name, salary
FROM employees1
WHERE salary > 4000;

--2.3. <:
SELECT name, salary
FROM employees1
WHERE salary < 7000;
--2.4. >=:
SELECT name, salary
FROM employees1
WHERE salary >= 5000;

--2.5. <=:
SELECT name, salary
FROM employees1
WHERE salary <= 4000;

--2.6. <>:
SELECT name, salary
FROM employees1
WHERE salary <> 4000;

--3. Bitwise operators:
--3.1. &:
SELECT id, name, department_id, department_id & 1 AS bitwise_and_result
FROM employees1;

--3.2. |:
SELECT id, name, department_id, department_id | 2 AS bitwise_or_result
FROM employees1;


--4. Logical operators:
--4.1. AND:
SELECT name, age, salary
FROM employees1
WHERE age BETWEEN 25 AND 35 AND salary > 4000;


--4.2. OR:
SELECT name, department_id, salary
FROM employees1
WHERE department_id = 101 OR salary > 5000;

--4.3. NOT:
SELECT name, department_id
FROM employees1
WHERE department_id NOT IN (101, 102);

-- AGGREGATE FUNCTIONS:
-- 1. COUNT():
SELECT COUNT(*) AS total_employees
FROM employees1;

-- 2. SUM():
SELECT SUM(salary) AS total_salary
FROM employees1;

-- 3. AVG():
SELECT AVG(salary) AS total_salary
FROM employees1;

-- 4. MIN():
SELECT MIN(salary) AS minimum_salary
FROM employees1;

-- 5. MAX():
SELECT MAX(salary) AS maximum_salary
FROM employees1;


-- 6. Using multiple aggregate function in one query:
SELECT 
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees1;


-- 7. GROUP BY with aggregate function:
SELECT department_id,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees1
GROUP BY department_id;


-- Use of wildcards:
-- 1. Percent(%) wildcard:
-- 1.1. Find all the employees whose name starts with the letter A:
SELECT name
FROM employees1
WHERE name LIKE 'A%';

-- 1.2. Find all the employees whose name ends with the letter E:
SELECT name
FROM employees1
WHERE name LIKE '%e';

-- 1.3. Find all the employees whose name contains the letter i:
SELECT name
FROM employees1
WHERE name LIKE '%i%';


-- 2. Underscore(_) wildcard:
-- 2.1. Find all employees whose name is exactly 5 characters long:
SELECT name
FROM employees1
WHERE name LIKE '_____';

-- 2.2. Find all employees whose name starts with any character, followed by 'I': 
SELECT name
FROM employees1
WHERE name LIKE '_I%';

-- 3. Combining wildcards:
-- Find the name of employees whose name starts with the letter 'C' and ends with 'e':
SELECT name
FROM employees1
WHERE name LIKE 'C%e';

-- Using NOT LIKE:
SELECT name
FROM employees1
WHERE name NOT LIKE 'A%';



