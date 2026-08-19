/*
============================================================
MONGODB - TOPIC 47: CREATE DATABASE
============================================================

MongoDB creates a database when data is first stored in it.

Unlike SQL databases, MongoDB does not require a separate
CREATE DATABASE command.

============================================================
*/

// Select the database.
use companyDB

/*
The database will be created when we create a collection
or insert data into it.

Check the current database:
*/

db

/*
============================================================
CREATE DATABASE BY INSERTING DATA
============================================================
*/

db.databaseTest.insertOne({
    message: "companyDB created successfully"
})

/*
============================================================
VERIFY
============================================================
*/

show dbs

/*
NOTE:

MongoDB databases are lazy-created.

If a database contains no data, it may not appear in
show dbs.
*/
