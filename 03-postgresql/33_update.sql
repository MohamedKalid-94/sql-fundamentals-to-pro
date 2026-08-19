/*
============================================================
POSTGRESQL PRACTICE
TOPIC 33: UPDATE
============================================================

Purpose:
    UPDATE modifies existing records.

Syntax:

    UPDATE table_name
    SET column_name = value
    WHERE condition;

WARNING:
    Always be careful with WHERE.

Without WHERE:

    UPDATE employees
    SET salary = 80000;

Every row will be updated.

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

INSERT INTO employees
VALUES
(1, 'Kalid', 'Engineering', 75000, 32),
(2, 'Ahmed', 'HR', 50000, 28),
(3, 'Rahman', 'Engineering', 80000, 30),
(4, 'Ali', 'Finance', 60000, 35);

-- ----------------------------------------------------------
-- Update one employee's salary
-- ----------------------------------------------------------

UPDATE employees
SET salary = 85000
WHERE employee_id = 1;

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Update department
-- ----------------------------------------------------------

UPDATE employees
SET department = 'Data Engineering'
WHERE employee_id = 3;

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Update multiple columns
-- ----------------------------------------------------------

UPDATE employees
SET
    salary = 65000,
    age = 29
WHERE employee_id = 2;

SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Update multiple rows
-- Increase Engineering salaries
-- ----------------------------------------------------------

UPDATE employees
SET salary = salary + 5000
WHERE department = 'Engineering';

SELECT *
FROM employees;