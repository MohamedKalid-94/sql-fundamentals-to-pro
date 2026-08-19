/*
============================================================
MONGODB - TOPIC 55: INDEXING
============================================================

Indexes improve query performance by allowing MongoDB to
find documents without scanning the entire collection.

============================================================
*/

use companyDB

// ----------------------------------------------------------
// CHECK CURRENT INDEXES
// ----------------------------------------------------------

db.employees.getIndexes()

// ----------------------------------------------------------
// CREATE INDEX
// ----------------------------------------------------------

// Ascending index on department.
db.employees.createIndex({
    department: 1
})

// ----------------------------------------------------------
// VERIFY INDEX
// ----------------------------------------------------------

db.employees.getIndexes()

// ----------------------------------------------------------
// TEST QUERY
// ----------------------------------------------------------

db.employees.find({
    department: "Engineering"
})

// ----------------------------------------------------------
// EXPLAIN QUERY
// ----------------------------------------------------------

db.employees.find({
    department: "Engineering"
}).explain("executionStats")

/*
Look for:

IXSCAN

IXSCAN indicates that MongoDB is using an index scan.

COLLSCAN indicates a collection scan.
*/

// ----------------------------------------------------------
// CREATE UNIQUE INDEX
// ----------------------------------------------------------

db.employees.createIndex(
    {
        employeeId: 1
    },
    {
        unique: true
    }
)