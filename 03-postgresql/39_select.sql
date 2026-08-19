/*
============================================================
POSTGRESQL PRACTICE
TOPIC 39: SELECT
============================================================

Purpose:
    SELECT is used to retrieve data from one or more tables.

Basic Syntax:
    SELECT column_name
    FROM table_name;

Examples covered:
    1. SELECT all columns
    2. SELECT specific columns
    3. SELECT with WHERE
    4. SELECT with multiple conditions
============================================================
*/

-- ----------------------------------------------------------
-- STEP 1: Create sample table
-- ----------------------------------------------------------

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

-- ----------------------------------------------------------
-- STEP 2: Insert sample data
-- ----------------------------------------------------------

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
-- EXAMPLE 1: Select all columns
-- ----------------------------------------------------------

SELECT * FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 2: Select specific columns
-- ----------------------------------------------------------

SELECT
    employee_name,
    department,
    salary
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 3: SELECT with WHERE
-- Get Engineering employees
-- ----------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Engineering';

-- ----------------------------------------------------------
-- EXAMPLE 4: Multiple conditions
-- Get employees earning more than 60000
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
WHERE salary > 60000;

-- ----------------------------------------------------------
-- EXAMPLE 5: Employees aged 30 or above
-- ----------------------------------------------------------

SELECT *
FROM employees
WHERE age >= 30;