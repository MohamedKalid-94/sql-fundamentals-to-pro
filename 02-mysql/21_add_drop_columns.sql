/*
============================================================
MYSQL - TOPIC 28: ADDING & DROPPING COLUMNS
============================================================

Purpose:

Learn how to add and remove columns from an existing table.

Commands:

ADD COLUMN
DROP COLUMN

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- ----------------------------------------------------------
-- ADD COLUMN
-- ----------------------------------------------------------

ALTER TABLE employees
ADD COLUMN department VARCHAR(50);

DESCRIBE employees;

-- Add another column.
ALTER TABLE employees
ADD COLUMN joining_date DATE;

DESCRIBE employees;

-- Insert sample data.
INSERT INTO employees
(employee_id, employee_name, salary, department, joining_date)
VALUES
(1, 'Kalid', 80000.00, 'Engineering', '2025-04-24'),
(2, 'Rahman', 60000.00, 'Finance', '2025-06-15');

SELECT * FROM employees;

-- ----------------------------------------------------------
-- DROP COLUMN
-- ----------------------------------------------------------

ALTER TABLE employees
DROP COLUMN joining_date;

-- Verify that joining_date was removed.
DESCRIBE employees;

SELECT * FROM employees;

/*
IMPORTANT:

DROP COLUMN permanently removes the column and its data.
*/
