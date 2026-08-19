/*
============================================================
MYSQL - TOPIC 16: CREATE DATABASE
============================================================

WHAT IS CREATE DATABASE?

CREATE DATABASE is used to create a new database.

BASIC SYNTAX:

CREATE DATABASE database_name;

============================================================
*/

-- Create the database if it does not already exist.
CREATE DATABASE IF NOT EXISTS company_db;

-- Select the database.
USE company_db;

-- Verify the current database.
SELECT DATABASE();
