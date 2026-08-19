/*
============================================================
POSTGRESQL PRACTICE
TOPIC 34: ALTER COLUMN
============================================================

Purpose:
    ALTER COLUMN is used to modify an existing column.

Common operations:

    - Change data type
    - Set NOT NULL
    - Drop NOT NULL
    - Set DEFAULT
    - Drop DEFAULT

============================================================
*/

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary INT
);

INSERT INTO employees
VALUES
(1, 'Kalid', 75000),
(2, 'Ahmed', 50000);

-- ----------------------------------------------------------
-- Change VARCHAR size
-- ----------------------------------------------------------

ALTER TABLE employees
ALTER COLUMN employee_name TYPE VARCHAR(100);

-- ----------------------------------------------------------
-- Change salary data type
-- ----------------------------------------------------------

ALTER TABLE employees
ALTER COLUMN salary TYPE DECIMAL(10, 2);

-- ----------------------------------------------------------
-- Set NOT NULL
-- ----------------------------------------------------------

ALTER TABLE employees
ALTER COLUMN employee_name SET NOT NULL;

-- ----------------------------------------------------------
-- Set DEFAULT
-- ----------------------------------------------------------

ALTER TABLE employees
ALTER COLUMN salary SET DEFAULT 50000;

-- Insert without salary
INSERT INTO employees
(employee_id, employee_name)
VALUES
(3, 'Rahman');

-- PostgreSQL uses the default salary
SELECT *
FROM employees;

-- ----------------------------------------------------------
-- Remove DEFAULT
-- ----------------------------------------------------------

ALTER TABLE employees
ALTER COLUMN salary DROP DEFAULT;

SELECT *
FROM employees;
