/*
========================================================
TOPIC 17: DROP DATABASE
========================================================

Purpose:
    Permanently delete a database and everything inside it.

WARNING:
    DROP DATABASE deletes:
        - Tables
        - Data
        - Views
        - Other database objects

Syntax:
    DROP DATABASE database_name;

========================================================
*/

-- Display available databases
SHOW DATABASES;

-- Select the database
USE mysql_learning;

-- IMPORTANT:
-- Uncomment the following command ONLY when you
-- intentionally want to delete the entire database.

-- DROP DATABASE mysql_learning;

-- Safer version:
-- DROP DATABASE IF EXISTS mysql_learning;
