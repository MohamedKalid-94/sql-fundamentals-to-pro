/*
========================================================
TOPIC 28: ADDING & DROPPING COLUMNS
========================================================

Purpose:
    Add new columns or remove existing columns
    from a table using ALTER TABLE.

========================================================
*/

USE mysql_learning;

-- Create table
CREATE TABLE column_demo (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT
);

-- -----------------------------------------------------
-- ADD ONE COLUMN
-- -----------------------------------------------------

ALTER TABLE column_demo
ADD email VARCHAR(100);

DESC column_demo;

-- -----------------------------------------------------
-- ADD ANOTHER COLUMN
-- -----------------------------------------------------

ALTER TABLE column_demo
ADD phone VARCHAR(15);

DESC column_demo;

-- -----------------------------------------------------
-- ADD COLUMN WITH DEFAULT VALUE
-- -----------------------------------------------------

ALTER TABLE column_demo
ADD city VARCHAR(50) DEFAULT 'Chennai';

DESC column_demo;

-- -----------------------------------------------------
-- INSERT SAMPLE DATA
-- -----------------------------------------------------

INSERT INTO column_demo
(
    employee_id,
    employee_name,
    age,
    email,
    phone
)
VALUES
(
    101,
    'Kalid',
    32,
    'kalid@example.com',
    '9876543210'
);

SELECT * FROM column_demo;

-- -----------------------------------------------------
-- DROP ONE COLUMN
-- -----------------------------------------------------

ALTER TABLE column_demo
DROP COLUMN phone;

DESC column_demo;

-- -----------------------------------------------------
-- DROP ANOTHER COLUMN
-- -----------------------------------------------------

ALTER TABLE column_demo
DROP COLUMN age;

DESC column_demo;

-- Display final table
SELECT * FROM column_demo;
