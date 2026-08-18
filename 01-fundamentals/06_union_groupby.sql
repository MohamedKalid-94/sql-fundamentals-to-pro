-- =====================================================
-- SQL Fundamentals - Day 6
-- Topics: UNION, GROUP BY
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- UNION
-- Combines results from two (or more) SELECT queries into
-- a single result set -- stacking rows together.
-- Both queries must return the same number of columns,
-- in the same order.
-- Duplicates are removed automatically (use UNION ALL to
-- keep duplicates instead).
-- =====================================================

-- Get names of employees in Engineering, combined with
-- names of employees in Sales
-- Expected: Kalid, Arjun, Meena
SELECT name FROM employees WHERE department = 'Engineering'
UNION
SELECT name FROM employees WHERE department = 'Sales';

-- =====================================================
-- GROUP BY
-- Groups rows that share the same value in a column, so
-- aggregate functions (COUNT, SUM, AVG, etc.) calculate
-- PER GROUP instead of across the whole table.
-- =====================================================

-- Count how many employees are in each department
-- Expected: Engineering 2, Marketing 1, Sales 1
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- Find the average salary per department
-- Expected: Engineering 78500, Marketing 60000, Sales 62000
SELECT department, AVG(salary) FROM employees GROUP BY department;
