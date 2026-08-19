/*
============================================================
POSTGRESQL PRACTICE
TOPIC 41: LIMIT
============================================================

Purpose:
    LIMIT restricts the number of rows returned.

Syntax:
    SELECT ...
    LIMIT number;

LIMIT is commonly combined with ORDER BY.

Example:
    Get the top 3 highest-paid employees.

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
-- EXAMPLE 1: Return only 3 rows
-- ----------------------------------------------------------

SELECT *
FROM employees
LIMIT 3;

-- ----------------------------------------------------------
-- EXAMPLE 2: Top 3 highest-paid employees
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- ----------------------------------------------------------
-- EXAMPLE 3: Bottom 2 salaries
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
ORDER BY salary ASC
LIMIT 2;

-- ----------------------------------------------------------
-- EXAMPLE 4: LIMIT with OFFSET
--
-- Skip the first 2 rows and return the next 3 rows.
-- ----------------------------------------------------------

SELECT *
FROM employees
ORDER BY employee_id
LIMIT 3 OFFSET 2;
