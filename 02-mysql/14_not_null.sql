/*
============================================================
MYSQL - TOPIC 21: NOT NULL
============================================================

WHAT IS NOT NULL?

NOT NULL prevents a column from storing NULL values.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Valid INSERT.
INSERT INTO employees
(employee_id, employee_name, department, salary)
VALUES
(1, 'Kalid', 'Engineering', 80000.00);

SELECT * FROM employees;

-- ----------------------------------------------------------
-- INVALID EXAMPLE
-- ----------------------------------------------------------

-- This would fail because employee_name is NOT NULL.

-- INSERT INTO employees
-- (employee_id, department, salary)
-- VALUES
-- (2, 'Finance', 60000.00);
