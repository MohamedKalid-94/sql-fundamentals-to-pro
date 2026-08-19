/*
============================================================
POSTGRESQL PRACTICE
TOPIC 29: CREATE TABLE
============================================================

Purpose:
    CREATE TABLE is used to create a new table.

Basic Syntax:

    CREATE TABLE table_name (
        column_name datatype,
        column_name datatype
    );

============================================================
*/

-- Remove the table if it already exists
-- This makes the script easier to run repeatedly.

DROP TABLE IF EXISTS employees;

-- ----------------------------------------------------------
-- CREATE TABLE
-- ----------------------------------------------------------

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

-- ----------------------------------------------------------
-- Check the table
-- ----------------------------------------------------------

SELECT *
FROM employees;