/*
============================================================
POSTGRESQL PRACTICE
TOPIC 36: DELETE
============================================================

Purpose:
    DELETE removes rows from a table.

Syntax:

    DELETE FROM table_name
    WHERE condition;

WARNING:
    DELETE without WHERE removes ALL rows.

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees
VALUES
(1, 'Kalid', 'Engineering', 75000),
(2, 'Ahmed', 'HR', 50000),
(3, 'Rahman', 'Engineering', 80000),
(4, 'Ali', 'Finance', 60000),
(5, 'John', 'HR', 55000);

-- ----------------------------------------------------------
-- Delete one employee
-- ----------------------------------------------------------

DELETE FROM employees
WHERE employee_id = 5;

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Delete employees from HR
-- ----------------------------------------------------------

DELETE FROM employees
WHERE department = 'HR';

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- IMPORTANT
--
-- The following command deletes ALL rows.
--
-- Do NOT run this unless you intentionally want
-- to empty the table.
-- ----------------------------------------------------------

-- DELETE FROM employees;