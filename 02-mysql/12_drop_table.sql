/*
============================================================
MYSQL - TOPIC 19: DROP TABLE
============================================================

WHAT IS DROP TABLE?

DROP TABLE permanently removes a table and all data
stored inside it.

============================================================
*/

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS temporary_employees (
    employee_id INT,
    employee_name VARCHAR(100)
);

-- Display tables.
SHOW TABLES;

-- Delete the table.
DROP TABLE IF EXISTS temporary_employees;

-- Verify that the table was removed.
SHOW TABLES;

/*
WARNING:

DROP TABLE deletes the table structure and its data.
*/
