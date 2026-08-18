/*
========================================================
TOPIC 20: ALTER TABLE
========================================================

Purpose:
    Modify the structure of an existing table.

ALTER TABLE can be used to:
    - Add columns
    - Modify columns
    - Rename columns
    - Drop columns
    - Rename tables

========================================================
*/

USE mysql_learning;

-- Create a table for demonstration
CREATE TABLE alter_demo (
    id INT,
    name VARCHAR(50)
);

-- -----------------------------------------------------
-- ADD COLUMN
-- -----------------------------------------------------

ALTER TABLE alter_demo
ADD email VARCHAR(100);

DESC alter_demo;

-- -----------------------------------------------------
-- MODIFY COLUMN
-- -----------------------------------------------------

ALTER TABLE alter_demo
MODIFY name VARCHAR(100);

DESC alter_demo;

-- -----------------------------------------------------
-- RENAME COLUMN
-- -----------------------------------------------------

ALTER TABLE alter_demo
RENAME COLUMN name TO employee_name;

DESC alter_demo;

-- Rename it back
ALTER TABLE alter_demo
RENAME COLUMN employee_name TO name;

-- -----------------------------------------------------
-- RENAME TABLE
-- -----------------------------------------------------

ALTER TABLE alter_demo
RENAME TO employee_alter_demo;

SHOW TABLES;

-- Rename it back
ALTER TABLE employee_alter_demo
RENAME TO alter_demo;

-- Final structure
DESC alter_demo;
