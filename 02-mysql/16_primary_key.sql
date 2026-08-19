/*
============================================================
MYSQL - TOPIC 23: PRIMARY KEY
============================================================

WHAT IS A PRIMARY KEY?

A PRIMARY KEY uniquely identifies each row in a table.

A PRIMARY KEY:

- Must contain unique values
- Cannot contain NULL
- Identifies each record

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO employees
(employee_id, employee_name, department)
VALUES
(1, 'Kalid', 'Engineering'),
(2, 'Rahman', 'Finance'),
(3, 'David', 'HR');

SELECT * FROM employees;

-- ----------------------------------------------------------
-- INVALID EXAMPLE
-- ----------------------------------------------------------

-- Duplicate employee_id would fail.

-- INSERT INTO employees
-- (employee_id, employee_name, department)
-- VALUES
-- (1, 'Ali', 'Marketing');
