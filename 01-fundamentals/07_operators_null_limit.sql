-- =====================================================
-- SQL Fundamentals - Day 7
-- Topics: Operators (deep dive), NULL Values (deep dive),
--         SELECT TOP (MySQL equivalent: LIMIT)
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- OPERATORS (deep dive)
-- =====================================================

-- IN -- matches any value in a list (shortcut for multiple ORs)
-- Equivalent to: WHERE department = 'Marketing' OR department = 'Sales'
-- Expected: Priya (Marketing), Meena (Sales)
SELECT * FROM employees WHERE department IN ('Marketing', 'Sales');

-- BETWEEN -- matches a range, inclusive on both ends
-- Expected: Kalid (75000), Priya (60000), Meena (62000)
-- Arjun (82000) is correctly excluded -- above the upper bound
SELECT * FROM employees WHERE salary BETWEEN 60000 AND 80000;

-- NOT IN -- opposite of IN, excludes matching values
-- Expected: Priya (Marketing), Meena (Sales)
SELECT * FROM employees WHERE department NOT IN ('Engineering');

-- =====================================================
-- NULL VALUES (deep dive)
-- =====================================================

-- IFNULL(column, fallback_value) -- MySQL-specific function.
-- Replaces NULL with a fallback value in the output --
-- useful for reports where blank cells aren't wanted.
-- With no NULL salaries currently in the table, this just
-- shows every salary as-is; it would show 0 for any NULL row.
SELECT name, IFNULL(salary, 0) AS salary FROM employees;

-- =====================================================
-- SELECT TOP (MySQL equivalent: LIMIT)
-- NOTE: SELECT TOP is SQL Server syntax, not MySQL.
-- MySQL uses LIMIT instead.
-- =====================================================

-- LIMIT -- restricts the number of rows returned
-- Expected: first 2 rows in default order (Kalid, Priya)
SELECT * FROM employees LIMIT 2;

-- LIMIT combined with ORDER BY -- a meaningful "top N" query
-- Expected: top 2 highest earners -- Arjun (82000), Kalid (75000)
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;
