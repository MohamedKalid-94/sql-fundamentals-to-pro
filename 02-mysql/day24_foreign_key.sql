/*
========================================================
TOPIC 24: FOREIGN KEY
========================================================

Purpose:
    A FOREIGN KEY creates a relationship between two tables.

Parent table:
    departments

Child table:
    employees

The employees.department_id must refer to an existing
departments.department_id.

========================================================
*/

USE mysql_learning;

-- -----------------------------------------------------
-- PARENT TABLE
-- -----------------------------------------------------

CREATE TABLE fk_departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Insert parent records
INSERT INTO fk_departments
VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance');

-- -----------------------------------------------------
-- CHILD TABLE
-- -----------------------------------------------------

CREATE TABLE fk_employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,

    CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id)
    REFERENCES fk_departments(department_id)
);

-- Valid records
INSERT INTO fk_employees
VALUES
(101, 'Kalid', 1),
(102, 'Ahmed', 2),
(103, 'Rahman', 3);

-- Display employees
SELECT * FROM fk_employees;

-- This will FAIL because department_id 10
-- does not exist in fk_departments.
--
-- INSERT INTO fk_employees
-- VALUES (104, 'Ali', 10);

-- Display relationship
DESC fk_employees;