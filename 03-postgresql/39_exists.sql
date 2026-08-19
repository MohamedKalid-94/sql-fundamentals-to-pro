/*
============================================================
POSTGRESQL PRACTICE
TOPIC 46: EXISTS
============================================================

Purpose:
    EXISTS checks whether a subquery returns at least
    one matching row.

EXISTS returns:
    TRUE  -> matching row exists
    FALSE -> matching row does not exist

NOT EXISTS does the opposite.

============================================================
*/

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- ----------------------------------------------------------
-- DEPARTMENTS TABLE
-- ----------------------------------------------------------

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

INSERT INTO departments
(department_id, department_name)
VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- ----------------------------------------------------------
-- EMPLOYEES TABLE
-- ----------------------------------------------------------

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
(3, 'Rahman', 'Engineering', 80000),
(4, 'Ali', 'Finance', 60000),
(5, 'John', 'HR', 55000),
(6, 'David', 'Engineering', 90000);

-- ----------------------------------------------------------
-- EXAMPLE 1: EXISTS
--
-- Find departments that have at least one employee.
-- ----------------------------------------------------------

SELECT
    d.department_id,
    d.department_name
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
);

-- Expected:
-- Engineering
-- HR
-- Finance

-- Marketing is not returned because no employee
-- belongs to the Marketing department.

-- ----------------------------------------------------------
-- EXAMPLE 2: NOT EXISTS
--
-- Find departments that have no employees.
-- ----------------------------------------------------------

SELECT
    d.department_id,
    d.department_name
FROM departments AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
);

-- Expected:
-- Marketing

-- ----------------------------------------------------------
-- EXAMPLE 3: EXISTS with salary condition
--
-- Find departments that have at least one employee
-- earning more than 80000.
-- ----------------------------------------------------------

SELECT
    d.department_id,
    d.department_name
FROM departments AS d
WHERE EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
      AND e.salary > 80000
);

-- Expected:
-- Engineering
