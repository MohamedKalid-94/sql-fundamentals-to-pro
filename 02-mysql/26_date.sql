/*
========================================================
TOPIC 26: DATE
========================================================

Purpose:
    DATE stores calendar dates.

Format:
    YYYY-MM-DD

Example:
    2026-08-18

Useful functions:
    CURDATE() -> Current date
    NOW()     -> Current date and time

========================================================
*/

USE mysql_learning;

-- Create table
CREATE TABLE date_demo (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    joining_date DATE,
    birth_date DATE
);

-- Insert dates
INSERT INTO date_demo
VALUES
(
    101,
    'Kalid',
    '2026-08-18',
    '1993-01-15'
);

INSERT INTO date_demo
VALUES
(
    102,
    'Ahmed',
    '2026-08-17',
    '1995-05-20'
);

-- Display records
SELECT * FROM date_demo;

-- Get current date
SELECT CURDATE();

-- Get current date and time
SELECT NOW();

-- Extract year from a date
SELECT
    employee_name,
    YEAR(joining_date) AS joining_year
FROM date_demo;

-- Extract month
SELECT
    employee_name,
    MONTH(joining_date) AS joining_month
FROM date_demo;
