/*
============================================================
MONGODB - TOPIC 48: COLLECTION
============================================================

A collection is similar to a table in a relational database.

MongoDB stores documents inside collections.

SQL:
Database → Table → Row

MongoDB:
Database → Collection → Document

============================================================
*/

// Select database.
use companyDB

// Create a collection.
db.createCollection("employees")

// Display collections.
show collections

/*
============================================================
INSERT INTO COLLECTION
============================================================
*/

db.employees.insertOne({
    employeeId: 1,
    name: "Kalid",
    department: "Engineering",
    salary: 80000
})

// Verify.
db.employees.find()
