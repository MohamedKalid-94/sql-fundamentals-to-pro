-- =====================================================
-- SQL Fundamentals - Day 2
-- Topics: ORDER BY, AND / OR / NOT
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
-- Run this at the start of every session -- MySQL forgets
-- which database you were using once you close/reopen a
-- connection or open a new query tab.
USE practice_db;

-- Confirm the employees table and data still exist
SELECT * FROM employees;

-- =====================================================
-- ORDER BY
-- Sorts result rows by a column.
--   ASC  -> ascending (smallest/earliest first) -- this is the default
--   DESC -> descending (largest/latest first)
-- =====================================================

-- Sort employees by salary, ascending (default -- no keyword needed)
SELECT * FROM employees ORDER BY salary;

-- Sort employees by salary, descending (highest paid first)
SELECT * FROM employees ORDER BY salary DESC;

-- =====================================================
-- AND / OR / NOT
-- Used to combine or reverse conditions inside WHERE.
--   AND  -> ALL conditions must be true
--   OR   -> AT LEAST ONE condition must be true
--   NOT  -> reverses a condition (true becomes false)
--
-- IMPORTANT LESSON LEARNED:
-- Only run ONE statement at a time while testing.
-- If multiple statements are selected/highlighted together,
-- MySQL Workbench can execute more than one at once,
-- producing confusing/mixed results.
-- =====================================================

-- Query 1: AND
-- Get employees in Engineering AND earning more than 78,000
-- Expected: only Arjun (Engineering, 82000)
-- Kalid is Engineering but only 75,000, so he fails the salary check
SELECT * FROM employees
WHERE department = 'Engineering' AND salary > 78000;

-- Query 2: OR
-- Get employees in Marketing OR Sales
-- Expected: Priya (Marketing) and Meena (Sales) -- 2 rows
SELECT * FROM employees
WHERE department = 'Marketing' OR department = 'Sales';

-- Query 3: NOT
-- Get employees who are NOT in Engineering
-- Expected: Priya (Marketing) and Meena (Sales) -- 2 rows
SELECT * FROM employees
WHERE NOT department = 'Engineering';
