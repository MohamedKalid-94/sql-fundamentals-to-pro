/*
============================================================
POSTGRESQL PRACTICE
TOPIC 31: FETCH DATA
============================================================

Purpose:
    Retrieve data from a table using SELECT.

In PostgreSQL, SELECT is the primary command used
to fetch data.

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

INSERT INTO employees
(employee_id, employee_name, department, salary, age)
VALUES
(1, 'Kalid', 'Engineering', 75000, 32),
(2, 'Ahmed', 'HR', 50000, 28),
(3, 'Rahman', 'Engineering', 80000, 30),
(4, 'Ali', 'Finance', 60000, 35),
(5, 'John', 'HR', 55000, 26),
(6, 'David', 'Engineering', 90000, 33);

-- ----------------------------------------------------------
-- Fetch all columns
-- ----------------------------------------------------------

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Fetch specific columns
-- ----------------------------------------------------------

SELECT
    employee_name,
    department,
    salary
FROM employees;

-- ----------------------------------------------------------
-- Fetch employees from Engineering
-- ----------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Engineering';

-- ----------------------------------------------------------
-- Fetch employees earning more than 60000
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
WHERE salary > 60000;