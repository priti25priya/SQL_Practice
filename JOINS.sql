-- Creating candidates table
CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department_id INT
);

-- Creating departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Inserting data into candidates table
INSERT INTO candidates (candidate_id, name, age, department_id) VALUES
(1, 'Alice', 30, 101),
(2, 'Bob', 22, 102),
(3, 'Charlie', 25, 103),
(4, 'Diana', 28, 101),
(5, 'Eve', 35, NULL),
(6, 'Joseph', 23, 102),
(7, 'Peter',24, 104);


-- Inserting data into departments table
INSERT INTO departments (department_id, department_name) VALUES
(101, 'Engineering'),
(102, 'Marketing'),
(103, 'HR'),
(104, 'Finance');

-- SQL JOINS:
--1. INNER JOIN:
SELECT c.name, d.department_name
FROM candidates c
INNER JOIN departments d
ON c.department_id = d.department_id;

-- LEFT JOIN/LEFT OUTER JOIN:
SELECT c.name, d.department_name
FROM candidates c
LEFT JOIN departments d
ON c.department_id = d.department_id;

-- RIGHT JOIN/RIGHT OUTER JOIN:
SELECT c.name, d.department_name
FROM candidates c
RIGHT JOIN departments d
ON c.department_id = d.department_id;


--2. FULL OUTER JOIN:
SELECT c.name, d.department_name
FROM candidates c
FULL OUTER JOIN departments d
ON c.department_id = d.department_id;

--3. CROSS JOIN:
SELECT c.name, d.department_name
FROM candidates c
CROSS JOIN departments d;

