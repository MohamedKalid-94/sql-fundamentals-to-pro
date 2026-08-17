-- =====================================================
-- SQL Fundamentals - Day 3
-- Topics: INSERT INTO (deeper dive), NULL Values
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- INSERT INTO -- inserting a row with missing columns
-- =====================================================
-- If a column is skipped during INSERT (and it's not marked
-- NOT NULL in the table definition), MySQL automatically
-- fills it with NULL.
--
-- Here, we insert a new employee WITHOUT a salary value --
-- salary will automatically become NULL.
--
-- NOTE: No trailing comma after the last row's closing
-- parenthesis when inserting a single row -- a comma tells
-- SQL "expect another row next," which breaks the statement
-- if nothing follows.
INSERT INTO employees (id, name, department) VALUES (8, 'Anitha', 'Sales');

-- Confirm the insert -- Anitha's salary column should appear blank (NULL)
SELECT * FROM employees;

-- =====================================================
-- NULL VALUES
-- NULL means "no value" / "unknown" -- it is NOT the same
-- as 0 or an empty string ''.
--
-- IMPORTANT: You cannot check for NULL using '='.
--   WHERE salary = NULL     -- WRONG, never works
-- Instead, use IS NULL / IS NOT NULL.
-- =====================================================

-- Find employees with NO salary recorded
-- Expected: only Anitha (id = 8)
SELECT * FROM employees WHERE salary IS NULL;

-- Find employees who DO have a salary recorded
-- Expected: everyone except Anitha (Kalid, Priya, Arjun, Meena)
SELECT * FROM employees WHERE salary IS NOT NULL;
