/*
========================================================
TOPIC 19: DROP TABLE
========================================================

Purpose:
    Permanently delete a table and all its data.

Syntax:
    DROP TABLE table_name;

WARNING:
    DROP TABLE removes:
        - Table structure
        - All rows
        - Constraints associated with the table

========================================================
*/

USE mysql_learning;

-- Create a temporary table for demonstration
CREATE TABLE temporary_data (
    id INT,
    description VARCHAR(100)
);

-- Verify that the table exists
SHOW TABLES;

-- Insert sample data
INSERT INTO temporary_data
VALUES
(1, 'Sample data'),
(2, 'Temporary record');

-- View the data
SELECT * FROM temporary_data;

-- Drop the table
-- DROP TABLE temporary_data;

-- Safer version:
-- DROP TABLE IF EXISTS temporary_data;

-- Verify that the table has been removed
SHOW TABLES;