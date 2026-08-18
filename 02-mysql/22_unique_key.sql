/*
========================================================
TOPIC 22: UNIQUE KEY
========================================================

Purpose:
    UNIQUE prevents duplicate values in a column.

Example:
    Two employees cannot have the same email address.

Syntax:
    column_name datatype UNIQUE;

or:

    CONSTRAINT constraint_name
    UNIQUE (column_name);

========================================================
*/

USE mysql_learning;

-- Create table
CREATE TABLE unique_demo (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Insert valid records
INSERT INTO unique_demo
VALUES
(101, 'Kalid', 'kalid@example.com');

INSERT INTO unique_demo
VALUES
(102, 'Ahmed', 'ahmed@example.com');

-- This will FAIL because the email already exists.
-- INSERT INTO unique_demo
-- VALUES
-- (103, 'Rahman', 'kalid@example.com');

-- Display records
SELECT * FROM unique_demo;

-- Display structure
DESC unique_demo;
