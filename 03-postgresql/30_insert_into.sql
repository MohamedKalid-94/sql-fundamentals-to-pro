/*
============================================================
POSTGRESQL PRACTICE
TOPIC 30: INSERT INTO
============================================================

Purpose:
    INSERT INTO is used to add records to a table.

Syntax:

    INSERT INTO table_name
    (column1, column2)
    VALUES
    (value1, value2);

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

-- ----------------------------------------------------------
-- Insert one employee
-- ----------------------------------------------------------

INSERT INTO employees
(employee_id, employee_name, department, salary, age)
VALUES
(1, 'Kalid', 'Engineering', 75000, 32);

-- ----------------------------------------------------------
-- Insert multiple employees
-- ----------------------------------------------------------

INSERT INTO employees
(employee_id, employee_name, department, salary, age)
VALUES
(2, 'Ahmed', 'HR', 50000, 28),
(3, 'Rahman', 'Engineering', 80000, 30),
(4, 'Ali', 'Finance', 60000, 35),
(5, 'John', 'HR', 55000, 26),
(6, 'David', 'Engineering', 90000, 33);

-- ----------------------------------------------------------
-- Display inserted data
-- ----------------------------------------------------------

SELECT *
FROM employees;