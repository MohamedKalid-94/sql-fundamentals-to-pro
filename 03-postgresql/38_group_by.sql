/*
============================================================
POSTGRESQL PRACTICE
TOPIC 45: GROUP BY
============================================================

Purpose:
    GROUP BY groups rows with the same value.

GROUP BY is commonly used with:
    COUNT()
    SUM()
    AVG()
    MIN()
    MAX()

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
-- EXAMPLE 1: Count employees in each department
-- ----------------------------------------------------------

SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- ----------------------------------------------------------
-- EXAMPLE 2: Total salary by department
-- ----------------------------------------------------------

SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- ----------------------------------------------------------
-- EXAMPLE 3: Average salary by department
-- ----------------------------------------------------------

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- ----------------------------------------------------------
-- EXAMPLE 4: Minimum and maximum salary by department
-- ----------------------------------------------------------

SELECT
    department,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;

-- ----------------------------------------------------------
-- EXAMPLE 5: Complete department salary report
-- ----------------------------------------------------------

SELECT
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;

-- ----------------------------------------------------------
-- EXAMPLE 6: GROUP BY + ORDER BY
-- Highest average salary first
-- ----------------------------------------------------------

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;
