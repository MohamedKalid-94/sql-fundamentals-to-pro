-- =====================================================
-- SQL Fundamentals - Day 4
-- Topics: UPDATE, DELETE
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- UPDATE
-- Modifies existing data in a table.
-- ALWAYS use WHERE -- without it, EVERY row gets updated.
-- =====================================================

-- WRONG EXAMPLE (do not run) -- no WHERE clause means
-- every employee's salary would become 65000:
--   UPDATE employees SET salary = 65000;

-- CORRECT: give Meena a raise to 62000
-- Target by id (primary key), NOT by name.
-- Names can repeat across rows, so filtering by name risks
-- updating more than one row unintentionally. id is
-- guaranteed unique, so it always targets exactly one row.
UPDATE employees SET salary = 62000 WHERE id = 4;

-- Confirm the update
SELECT * FROM employees;

-- =====================================================
-- DELETE
-- Removes rows from a table.
-- Same rule applies -- ALWAYS use WHERE, or every row is deleted.
-- =====================================================

-- WRONG EXAMPLE (do not run) -- no WHERE clause means
-- the entire table would be emptied:
--   DELETE FROM employees;

-- CORRECT: remove Anitha (id = 8, the NULL-salary row from Day 3)
-- Again, filtering by id rather than name to guarantee
-- exactly one row is affected.
DELETE FROM employees WHERE id = 8;

-- Confirm the delete -- Anitha should be gone,
-- Meena's salary should now show 62000
SELECT * FROM employees;

-- =====================================================
-- KEY LESSON
-- Filtering UPDATE/DELETE by a non-unique column (like name)
-- is risky -- if two rows share that value, BOTH get affected.
-- Always prefer filtering by a primary key (id) when you
-- intend to target exactly one specific row.
-- =====================================================
