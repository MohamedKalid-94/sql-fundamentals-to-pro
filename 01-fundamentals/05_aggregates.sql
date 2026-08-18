-- =====================================================
-- SQL Fundamentals - Day 5
-- Topics: MIN/MAX, COUNT/SUM/AVG (Aggregate Functions)
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
-- Run this every session -- MySQL forgets the active database
-- when you open a new query tab or reconnect.
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- AGGREGATE FUNCTIONS
-- These perform a calculation across multiple rows and
-- return a single value. Always wrap a COLUMN NAME inside
-- the function -- not a literal number.
--   Wrong: SELECT MAX(82000) FROM employees;
--   Right: SELECT MAX(salary) FROM employees;
-- =====================================================

-- MIN -- smallest value in the salary column
-- Expected: 55000 (Meena)
SELECT MIN(salary) FROM employees;

-- MAX -- largest value in the salary column
-- Expected: 82000 (Arjun)
SELECT MAX(salary) FROM employees;

-- COUNT(*) -- total number of rows in the table
-- Expected: 4 (Kalid, Priya, Arjun, Meena)
SELECT COUNT(*) FROM employees;

-- COUNT(*) with a WHERE filter -- counts only matching rows
-- Expected: 2 (Kalid, Arjun -- both Engineering)
SELECT COUNT(*) FROM employees WHERE department = 'Engineering';

-- SUM -- adds up every value in the salary column
-- Expected: 279000 (75000 + 60000 + 82000 + 62000)
SELECT SUM(salary) FROM employees;

-- AVG -- average of the salary column
-- Expected: 69750 (279000 / 4)
SELECT AVG(salary) FROM employees;
