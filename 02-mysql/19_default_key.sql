/*
============================================================
MYSQL - TOPIC 25: DEFAULT
============================================================

WHAT IS DEFAULT?

DEFAULT automatically provides a value when an INSERT
statement does not provide one.

Note:
Some beginner syllabi call this "DEFAULT KEY", but the
MySQL feature is a DEFAULT value/constraint.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) DEFAULT 'Engineering',
    status VARCHAR(20) DEFAULT 'Active'
);

-- Department and status use their DEFAULT values.
INSERT INTO employees
(employee_id, employee_name)
VALUES
(1, 'Kalid');

-- Explicit values override DEFAULT values.
INSERT INTO employees
(employee_id, employee_name, department, status)
VALUES
(2, 'Rahman', 'Finance', 'Inactive');

SELECT * FROM employees;
