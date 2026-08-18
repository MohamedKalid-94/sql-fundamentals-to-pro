/*
========================================================
TOPIC 27: VIEWS
========================================================

Purpose:
    A VIEW is a virtual table based on a SQL query.

Benefits:
    - Simplifies complex queries
    - Can hide sensitive columns
    - Provides a reusable query

========================================================
*/

USE mysql_learning;

-- Create department table
CREATE TABLE view_departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Insert departments
INSERT INTO view_departments
VALUES
(1, 'Engineering', 'Chennai'),
(2, 'HR', 'Bangalore'),
(3, 'Finance', 'Mumbai');

-- Create employee table
CREATE TABLE view_employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES view_departments(department_id)
);

-- Insert employees
INSERT INTO view_employees
VALUES
(101, 'Kalid', 'kalid@example.com', 1, 75000),
(102, 'Ahmed', 'ahmed@example.com', 2, 50000),
(103, 'Rahman', 'rahman@example.com', 3, 60000);

-- -----------------------------------------------------
-- CREATE VIEW
-- -----------------------------------------------------

CREATE VIEW employee_details AS
SELECT
    e.employee_id,
    e.employee_name,
    e.email,
    d.department_name,
    d.location
FROM view_employees AS e
JOIN view_departments AS d
ON e.department_id = d.department_id;

-- Query the VIEW
SELECT * FROM employee_details;

-- -----------------------------------------------------
-- VIEW WITH WHERE CONDITION
-- -----------------------------------------------------

CREATE VIEW engineering_employees AS
SELECT
    employee_id,
    employee_name,
    email,
    salary
FROM view_employees
WHERE department_id = 1;

-- Query the second view
SELECT * FROM engineering_employees;

-- Show all views
SHOW FULL TABLES
WHERE Table_type = 'VIEW';

-- Delete a view
-- DROP VIEW employee_details;

-- Safer:
-- DROP VIEW IF EXISTS employee_details;