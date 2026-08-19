/*
============================================================
POSTGRESQL PRACTICE
TOPIC 38: OPERATORS
============================================================

Operators are used to perform operations and comparisons.

Categories covered:

1. Arithmetic Operators
2. Comparison Operators
3. Logical Operators
4. BETWEEN
5. IN
6. LIKE
7. IS NULL
8. IS NOT NULL

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
(4, 'Ali', 'Finance', 60000, 35),
(5, 'John', 'HR', 55000, 26),
(6, 'David', 'Engineering', 90000, 33);

-- ==========================================================
-- 1. ARITHMETIC OPERATORS
-- ==========================================================

-- Addition +
SELECT salary + 5000 AS increased_salary
FROM employees;

-- Subtraction -
SELECT salary - 5000 AS reduced_salary
FROM employees;

-- Multiplication *
SELECT salary * 12 AS annual_salary
FROM employees;

-- Division /
SELECT salary / 12 AS monthly_value
FROM employees;

-- ==========================================================
-- 2. COMPARISON OPERATORS
-- ==========================================================

-- Equal to =
SELECT *
FROM employees
WHERE department = 'Engineering';

-- Not equal to <>
SELECT *
FROM employees
WHERE department <> 'HR';

-- Greater than >
SELECT *
FROM employees
WHERE salary > 70000;

-- Less than <
SELECT *
FROM employees
WHERE salary < 60000;

-- Greater than or equal to >=
SELECT *
FROM employees
WHERE salary >= 60000;

-- Less than or equal to <=
SELECT *
FROM employees
WHERE age <= 30;

-- ==========================================================
-- 3. LOGICAL OPERATORS
-- ==========================================================

-- AND
SELECT *
FROM employees
WHERE department = 'Engineering'
  AND salary > 75000;

-- OR
SELECT *
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';

-- NOT
SELECT *
FROM employees
WHERE NOT department = 'HR';

-- ==========================================================
-- 4. BETWEEN
-- ==========================================================

-- Salary between 50000 and 70000
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;

-- ==========================================================
-- 5. IN
-- ==========================================================

-- Employees from Engineering or HR
SELECT *
FROM employees
WHERE department IN ('Engineering', 'HR');

-- ==========================================================
-- 6. LIKE
-- ==========================================================

-- Names starting with 'D'
SELECT *
FROM employees
WHERE employee_name LIKE 'D%';

-- Names ending with 'n'
SELECT *
FROM employees
WHERE employee_name LIKE '%n';

-- Names containing 'a'
SELECT *
FROM employees
WHERE employee_name LIKE '%a%';

-- ==========================================================
-- 7. IS NULL
-- ==========================================================

-- Create a NULL value for demonstration
INSERT INTO employees
(employee_id, employee_name, department, salary, age)
VALUES
(7, 'Unknown', NULL, 45000, NULL);

-- Find rows where department is NULL
SELECT *
FROM employees
WHERE department IS NULL;

-- ==========================================================
-- 8. IS NOT NULL
-- ==========================================================

SELECT *
FROM employees
WHERE department IS NOT NULL;
