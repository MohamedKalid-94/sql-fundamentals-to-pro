/*
============================================================
MYSQL - TOPIC 20: ALTER TABLE
============================================================

WHAT IS ALTER TABLE?

ALTER TABLE is used to modify an existing table.

It can be used to:

1. Add columns
2. Modify columns
3. Rename columns
4. Drop columns
5. Add or remove constraints

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- ----------------------------------------------------------
-- ADD COLUMN
-- ----------------------------------------------------------

ALTER TABLE employees
ADD department VARCHAR(50);

-- ----------------------------------------------------------
-- MODIFY COLUMN
-- ----------------------------------------------------------

ALTER TABLE employees
MODIFY salary DECIMAL(12,2);

-- ----------------------------------------------------------
-- RENAME COLUMN
-- ----------------------------------------------------------

ALTER TABLE employees
RENAME COLUMN employee_name TO full_name;

-- Display final structure.
DESCRIBE employees;
