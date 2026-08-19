/*
============================================================
POSTGRESQL PRACTICE
TOPIC 37: DROP TABLE
============================================================

Purpose:
    DROP TABLE permanently removes the table,
    including its structure and data.

Syntax:

    DROP TABLE table_name;

============================================================
*/

-- Remove old table if it exists
DROP TABLE IF EXISTS temporary_employees;

-- ----------------------------------------------------------
-- Create table
-- ----------------------------------------------------------

CREATE TABLE temporary_employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);

-- ----------------------------------------------------------
-- Insert sample data
-- ----------------------------------------------------------

INSERT INTO temporary_employees
VALUES
(1, 'Kalid', 'Engineering'),
(2, 'Ahmed', 'HR');

-- Check data
SELECT *
FROM temporary_employees;

-- ----------------------------------------------------------
-- Drop the table
-- ----------------------------------------------------------

DROP TABLE temporary_employees;

-- ----------------------------------------------------------
-- Verify
-- ----------------------------------------------------------

-- The following query should return no table:

SELECT *
FROM information_schema.tables
WHERE table_name = 'temporary_employees';