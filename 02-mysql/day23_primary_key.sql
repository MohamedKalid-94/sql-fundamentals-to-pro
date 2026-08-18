/*
========================================================
TOPIC 23: PRIMARY KEY
========================================================

Purpose:
    A PRIMARY KEY uniquely identifies each row.

Rules:
    - Cannot contain NULL
    - Cannot contain duplicate values
    - A table has one PRIMARY KEY constraint

Syntax:
    column_name datatype PRIMARY KEY;

========================================================
*/

USE mysql_learning;

-- Create table
CREATE TABLE primary_key_demo (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);

-- Insert valid records
INSERT INTO primary_key_demo
VALUES
(101, 'Kalid', 'Engineering'),
(102, 'Ahmed', 'HR'),
(103, 'Rahman', 'Finance');

-- Display data
SELECT * FROM primary_key_demo;

-- This will FAIL because employee_id 101 already exists.
-- INSERT INTO primary_key_demo
-- VALUES
-- (101, 'Ali', 'Testing');

-- This will also FAIL because PRIMARY KEY cannot be NULL.
-- INSERT INTO primary_key_demo
-- VALUES
-- (NULL, 'John', 'HR');

-- Display structure
DESC primary_key_demo;