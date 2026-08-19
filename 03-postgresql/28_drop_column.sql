/*
============================================================
POSTGRESQL PRACTICE
TOPIC 35: DROP COLUMN
============================================================

Purpose:
    DROP COLUMN permanently removes a column from a table.

Syntax:

    ALTER TABLE table_name
    DROP COLUMN column_name;

WARNING:
    Dropping a column removes the data stored in that column.

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT,
    phone VARCHAR(15)
);

INSERT INTO employees
VALUES
(1, 'Kalid', 'Engineering', 75000, 32, '9876543210'),
(2, 'Ahmed', 'HR', 50000, 28, '9876543211');

-- ----------------------------------------------------------
-- Drop phone column
-- ----------------------------------------------------------

ALTER TABLE employees
DROP COLUMN phone;

-- Verify
SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Drop age column
-- ----------------------------------------------------------

ALTER TABLE employees
DROP COLUMN age;

SELECT *
FROM employees;
