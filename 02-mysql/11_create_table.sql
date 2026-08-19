/*
============================================================
MYSQL - TOPIC 18: CREATE TABLE
============================================================

WHAT IS CREATE TABLE?

CREATE TABLE creates a table with columns and their
respective data types.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Display the table structure.
DESCRIBE employees;

/*
EXPECTED COLUMNS:

employee_id
employee_name
department
salary
*/
