/*
============================================================
MYSQL - TOPIC 17: DROP DATABASE
============================================================

WHAT IS DROP DATABASE?

DROP DATABASE permanently removes a database and all
objects inside it.

WARNING:
This is a destructive operation.

============================================================
*/

-- Create a temporary database for demonstration.
CREATE DATABASE IF NOT EXISTS practice_db;

-- Display available databases.
SHOW DATABASES;

-- Delete the practice database.
DROP DATABASE IF EXISTS practice_db;

-- Verify that practice_db has been removed.
SHOW DATABASES;

/*
IMPORTANT:

Never use DROP DATABASE on a production database without
being absolutely certain.
*/
