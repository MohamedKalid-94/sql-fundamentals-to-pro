/*
============================================================
MYSQL - TOPIC 22: UNIQUE KEY
============================================================

WHAT IS UNIQUE?

UNIQUE prevents duplicate values in a column.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(150) UNIQUE
);

-- Insert unique email addresses.
INSERT INTO employees
(employee_id, employee_name, email)
VALUES
(1, 'Kalid', 'kalid@example.com'),
(2, 'Rahman', 'rahman@example.com');

SELECT * FROM employees;

-- ----------------------------------------------------------
-- INVALID EXAMPLE
-- ----------------------------------------------------------

-- This would fail because the email already exists.

-- INSERT INTO employees
-- (employee_id, employee_name, email)
-- VALUES
-- (3, 'David', 'kalid@example.com');
