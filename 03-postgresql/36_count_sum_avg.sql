/*
============================================================
POSTGRESQL PRACTICE
TOPIC 43: COUNT(), SUM(), AVG()
============================================================

COUNT()
    Counts rows.

SUM()
    Calculates the total of numeric values.

AVG()
    Calculates the average of numeric values.

These are aggregate functions.

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
-- EXAMPLE 1: COUNT
-- Total number of employees
-- ----------------------------------------------------------

SELECT
    COUNT(*) AS total_employees
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 2: COUNT with WHERE
-- Number of Engineering employees
-- ----------------------------------------------------------

SELECT
    COUNT(*) AS engineering_employees
FROM employees
WHERE department = 'Engineering';

-- ----------------------------------------------------------
-- EXAMPLE 3: SUM
-- Total salary
-- ----------------------------------------------------------

SELECT
    SUM(salary) AS total_salary
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 4: AVG
-- Average salary
-- ----------------------------------------------------------

SELECT
    AVG(salary) AS average_salary
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 5: Average age
-- ----------------------------------------------------------

SELECT
    AVG(age) AS average_age
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 6: COUNT + SUM + AVG
-- ----------------------------------------------------------

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees;
