/*
============================================================
MYSQL - TOPIC 26: DATE
============================================================

WHAT IS DATE?

DATE stores calendar dates.

Standard format:

YYYY-MM-DD

Example:

2026-08-19

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    joining_date DATE
);

INSERT INTO employees
(employee_id, employee_name, joining_date)
VALUES
(1, 'Kalid', '2025-04-24'),
(2, 'Rahman', '2025-06-15'),
(3, 'David', '2026-01-10');

-- Display all records.
SELECT * FROM employees;

-- Find employees who joined after May 1, 2025.
SELECT *
FROM employees
WHERE joining_date > '2025-05-01';

-- Extract year.
SELECT
    employee_name,
    YEAR(joining_date) AS joining_year
FROM employees;

-- Extract month.
SELECT
    employee_name,
    MONTH(joining_date) AS joining_month
FROM employees;

-- Get today's date.
SELECT CURDATE() AS today;
