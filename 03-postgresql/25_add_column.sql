/*
============================================================
POSTGRESQL PRACTICE
TOPIC 32: ADD COLUMN
============================================================

Purpose:
    ALTER TABLE ... ADD COLUMN is used to add a new
    column to an existing table.

Syntax:

    ALTER TABLE table_name
    ADD COLUMN column_name datatype;

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees
(employee_id, employee_name, department, salary)
VALUES
(1, 'Kalid', 'Engineering', 75000),
(2, 'Ahmed', 'HR', 50000),
(3, 'Rahman', 'Engineering', 80000);

-- ----------------------------------------------------------
-- Add age column
-- ----------------------------------------------------------

ALTER TABLE employees
ADD COLUMN age INT;

-- Check table structure
-- In pgAdmin, you can also inspect the table manually.

-- Insert age values
UPDATE employees
SET age = 32
WHERE employee_id = 1;

UPDATE employees
SET age = 28
WHERE employee_id = 2;

UPDATE employees
SET age = 30
WHERE employee_id = 3;

-- Display data
SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Add another column with a DEFAULT value
-- ----------------------------------------------------------

ALTER TABLE employees
ADD COLUMN city VARCHAR(50) DEFAULT 'Chennai';

SELECT *
FROM employees;
