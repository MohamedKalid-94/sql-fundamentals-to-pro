/*
========================================================
MYSQL DAY - DATABASE BASICS
TOPIC 16: CREATE DATABASE
========================================================

Purpose:
    Create a new database in MySQL.

Syntax:
    CREATE DATABASE database_name;

========================================================
*/

-- Create a database
CREATE DATABASE mysql_learning;

-- Display all available databases
SHOW DATABASES;

-- Select the database for use
USE mysql_learning;

-- Verify the currently selected database
SELECT DATABASE();