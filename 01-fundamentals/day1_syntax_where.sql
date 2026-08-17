-- =====================================================
-- SQL Fundamentals - Day 1
-- Topics: SQL Syntax, SQL WHERE
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- STEP 1: Create the database
-- -----------------------------------------------------
-- CREATE DATABASE sets up a new, empty database container.
-- Run this only once; if it already exists, this line will
-- throw an error (which is safe to ignore).
CREATE DATABASE practice_db;

-- -----------------------------------------------------
-- STEP 2: Select the database to work in
-- -----------------------------------------------------
-- USE tells MySQL "all following commands apply to this database"
-- until you switch to another one.
USE practice_db;

-- -----------------------------------------------------
-- STEP 3: Create a table
-- -----------------------------------------------------
-- A table is made up of columns, each with a data type.
--   id          -> whole number, uniquely identifies each row
--   name        -> text, max 50 characters
--   department  -> text, max 50 characters
--   salary      -> whole number
CREATE TABLE employees (
    id INT PRIMARY KEY,        -- PRIMARY KEY = no duplicate/blank values allowed
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- -----------------------------------------------------
-- STEP 4: Insert data into the table
-- -----------------------------------------------------
-- Best practice: always list column names explicitly.
-- This avoids errors if column order is ever unclear,
-- and prevents accidental NULL values from mismatched data.
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Kalid', 'Engineering', 75000),
(2, 'Priya', 'Marketing', 60000),
(3, 'Arjun', 'Engineering', 82000),
(4, 'Meena', 'Sales', 55000);

-- -----------------------------------------------------
-- STEP 5: View all data
-- -----------------------------------------------------
-- SELECT * means "give me all columns"
-- FROM employees means "from this table"
SELECT * FROM employees;

-- =====================================================
-- WHERE CLAUSE PRACTICE
-- WHERE filters rows -- only rows matching the condition
-- are returned.
-- =====================================================

-- Query 1: Exact match using '='
-- Get all employees in the Engineering department
SELECT * FROM employees WHERE department = 'Engineering';

-- Query 2: Comparison using '<'
-- Get all employees earning less than 70,000
-- (no quotes around numbers -- quotes are only for text values)
SELECT * FROM employees WHERE salary < 70000;

-- Query 3: Pattern matching using LIKE and '%'
-- '%' means "any characters, any length"
-- 'M%'  -> starts with M
-- '%M'  -> ends with M
-- '%M%' -> contains M anywhere
-- Get all employees whose name starts with 'M'
SELECT * FROM employees WHERE name LIKE 'M%';
