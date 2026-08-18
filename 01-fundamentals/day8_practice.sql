-- =====================================================
-- SQL Fundamentals - Day 8 (Practice Day)
-- Combining everything from Days 1-7: WHERE, ORDER BY,
-- AND/OR/NOT, aggregates, GROUP BY, LIMIT, IN, BETWEEN,
-- LIKE, UNION
-- Database: MySQL
-- =====================================================

-- -----------------------------------------------------
-- SETUP: Select the database to work in
-- -----------------------------------------------------
USE practice_db;

SELECT * FROM employees;

-- =====================================================
-- 1. Get all employees, ordered alphabetically by name
-- =====================================================
SELECT * FROM employees ORDER BY name;

-- =====================================================
-- 2. Get employees earning more than 60000,
--    ordered by salary descending
-- =====================================================
SELECT * FROM employees WHERE salary > 60000 ORDER BY salary DESC;

-- =====================================================
-- 3. Get employees in Engineering OR earning more than 80000
-- =====================================================
SELECT * FROM employees WHERE department = 'Engineering' OR salary > 80000;

-- =====================================================
-- 4. Get employees NOT in Marketing
-- =====================================================
SELECT * FROM employees WHERE NOT department = 'Marketing';

-- =====================================================
-- 5. Count total number of employees
-- =====================================================
SELECT COUNT(*) FROM employees;

-- =====================================================
-- 6. Find the average salary of the whole company
-- =====================================================
SELECT AVG(salary) FROM employees;

-- =====================================================
-- 7. Find the highest-paid employee in Engineering only
--    (WHERE filter + MAX combined)
-- =====================================================
SELECT MAX(salary) FROM employees WHERE department = 'Engineering';

-- =====================================================
-- 8. Group employees by department, showing SUM of
--    salaries per department
--    Expected: Engineering 157000, Marketing 60000, Sales 62000
-- =====================================================
SELECT department, SUM(salary) FROM employees GROUP BY department;

-- =====================================================
-- 9. Get the top 1 highest-paid employee (ORDER BY + LIMIT)
-- =====================================================
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

-- =====================================================
-- 10. Get employees with salary between 55000 and 65000
-- =====================================================
SELECT * FROM employees WHERE salary BETWEEN 55000 AND 65000;

-- =====================================================
-- 11. Get employees whose department starts with 'S'
--     (LIKE pattern matching on department, not name)
-- =====================================================
SELECT * FROM employees WHERE department LIKE 'S%';

-- =====================================================
-- 12. Combine two lists with UNION: names of employees
--     earning above 70000, and names of employees in Marketing
--     UNION removes duplicates automatically
-- =====================================================
SELECT name FROM employees WHERE department = 'Marketing'
UNION
SELECT name FROM employees WHERE salary > 70000;

-- =====================================================
-- MILESTONE: All 15 SQL Fundamentals topics complete!
-- Next: MySQL-specific topics -- databases, tables,
-- keys, and constraints (Day 9 onward).
-- =====================================================
