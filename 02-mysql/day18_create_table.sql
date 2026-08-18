/*
========================================================
TOPIC 18: CREATE TABLE
========================================================

Purpose:
    Create a new table inside a database.

Syntax:
    CREATE TABLE table_name (
        column_name datatype,
        column_name datatype
    );

========================================================
*/

-- Select database
USE mysql_learning;

-- Create departments table
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Display all tables
SHOW TABLES;

-- Display table structure
DESC departments;


-- Insert sample data
INSERT INTO departments
VALUES
(1, 'Engineering', 'Chennai'),
(2, 'HR', 'Bangalore'),
(3, 'Finance', 'Mumbai');

-- Display table data
SELECT * FROM departments;