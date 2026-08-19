/*
============================================================
MYSQL - TOPIC 27: VIEWS
============================================================

WHAT IS A VIEW?

A VIEW is a virtual table based on the result of a SELECT
query.

Views are useful for:

- Simplifying complex queries
- Reusing frequently needed queries
- Restricting visible columns
- Creating a consistent interface to data

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP VIEW IF EXISTS engineering_employees;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees
(employee_id, employee_name, department, salary)
VALUES
(1, 'Kalid', 'Engineering', 80000.00),
(2, 'Rahman', 'Finance', 60000.00),
(3, 'David', 'Engineering', 90000.00),
(4, 'Ali', 'HR', 50000.00);

-- ----------------------------------------------------------
-- CREATE VIEW
-- ----------------------------------------------------------

CREATE VIEW engineering_employees AS
SELECT
    employee_id,
    employee_name,
    salary
FROM employees
WHERE department = 'Engineering';

-- ----------------------------------------------------------
-- QUERY THE VIEW
-- ----------------------------------------------------------

SELECT *
FROM engineering_employees;

-- ----------------------------------------------------------
-- VIEW DEFINITION
-- ----------------------------------------------------------

SHOW CREATE VIEW engineering_employees;

-- To remove the view:
-- DROP VIEW IF EXISTS engineering_employees;
