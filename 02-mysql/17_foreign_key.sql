/*
============================================================
MYSQL - TOPIC 24: FOREIGN KEY
============================================================

WHAT IS A FOREIGN KEY?

A FOREIGN KEY creates a relationship between two tables.

The foreign key in the child table references a key in
the parent table.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- ----------------------------------------------------------
-- PARENT TABLE
-- ----------------------------------------------------------

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- ----------------------------------------------------------
-- CHILD TABLE
-- ----------------------------------------------------------

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- ----------------------------------------------------------
-- INSERT PARENT DATA
-- ----------------------------------------------------------

INSERT INTO departments
(department_id, department_name)
VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance');

-- ----------------------------------------------------------
-- INSERT CHILD DATA
-- ----------------------------------------------------------

INSERT INTO employees
(employee_id, employee_name, department_id)
VALUES
(101, 'Kalid', 1),
(102, 'Rahman', 2),
(103, 'Ali', 3);

-- ----------------------------------------------------------
-- JOIN THE TABLES
-- ----------------------------------------------------------

SELECT
    e.employee_id,
    e.employee_name,
    d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;

/*
The foreign key ensures that an employee cannot reference
a department_id that does not exist in departments.
*/
