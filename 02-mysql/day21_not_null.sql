/*
========================================================
TOPIC 21: NOT NULL
========================================================

Purpose:
    NOT NULL prevents a column from storing NULL values.

NULL means:
    No value / unknown value.

Syntax:
    column_name datatype NOT NULL;

========================================================
*/

USE mysql_learning;

-- Create table with NOT NULL constraints
CREATE TABLE not_null_demo (
    employee_id INT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    age INT
);

-- Valid data
INSERT INTO not_null_demo
VALUES
(101, 'Kalid', 32);

-- Valid because age is allowed to be NULL
INSERT INTO not_null_demo
VALUES
(102, 'Ahmed', NULL);

-- This will FAIL because employee_name is NOT NULL.
-- INSERT INTO not_null_demo
-- VALUES (103, NULL, 30);

-- Display data
SELECT * FROM not_null_demo;

-- Display structure
DESC not_null_demo;