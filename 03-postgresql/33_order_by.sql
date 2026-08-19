/*
============================================================
POSTGRESQL PRACTICE
TOPIC 40: ORDER BY
============================================================

Purpose:
    ORDER BY is used to sort query results.

Syntax:
    ORDER BY column_name ASC;

    ORDER BY column_name DESC;

ASC  = Ascending
DESC = Descending
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
-- EXAMPLE 1: Ascending salary
-- Lowest salary to highest salary
-- ----------------------------------------------------------

SELECT *
FROM employees
ORDER BY salary ASC;

-- ----------------------------------------------------------
-- EXAMPLE 2: Descending salary
-- Highest salary to lowest salary
-- ----------------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC;

-- ----------------------------------------------------------
-- EXAMPLE 3: Sort by employee name
-- ----------------------------------------------------------

SELECT *
FROM employees
ORDER BY employee_name ASC;

-- ----------------------------------------------------------
-- EXAMPLE 4: Multiple columns
-- Department A-Z
-- Salary highest to lowest within each department
-- ----------------------------------------------------------

SELECT *
FROM employees
ORDER BY department ASC, salary DESC;
