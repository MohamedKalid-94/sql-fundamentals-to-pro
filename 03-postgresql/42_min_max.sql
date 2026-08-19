/*
============================================================
POSTGRESQL PRACTICE
TOPIC 42: MIN() AND MAX()
============================================================

MIN()
    Returns the smallest value.

MAX()
    Returns the largest value.

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
-- EXAMPLE 1: Minimum salary
-- ----------------------------------------------------------

SELECT
    MIN(salary) AS minimum_salary
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 2: Maximum salary
-- ----------------------------------------------------------

SELECT
    MAX(salary) AS maximum_salary
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 3: Youngest and oldest employee
-- ----------------------------------------------------------

SELECT
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM employees;

-- ----------------------------------------------------------
-- EXAMPLE 4: Lowest-paid employee
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

-- ----------------------------------------------------------
-- EXAMPLE 5: Highest-paid employee
-- ----------------------------------------------------------

SELECT
    employee_name,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);