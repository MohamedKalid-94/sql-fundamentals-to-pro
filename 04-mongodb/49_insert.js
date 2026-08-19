/*
============================================================
MONGODB - TOPIC 49: INSERT
============================================================

MongoDB provides:

insertOne()
insertMany()

============================================================
*/

use companyDB

// Start clean for this exercise.
db.employees.deleteMany({})

// ----------------------------------------------------------
// INSERT ONE DOCUMENT
// ----------------------------------------------------------

db.employees.insertOne({
    employeeId: 1,
    name: "Kalid",
    department: "Engineering",
    salary: 80000,
    age: 32
})

// ----------------------------------------------------------
// INSERT MANY DOCUMENTS
// ----------------------------------------------------------

db.employees.insertMany([
    {
        employeeId: 2,
        name: "Rahman",
        department: "Engineering",
        salary: 80000,
        age: 30
    },
    {
        employeeId: 3,
        name: "David",
        department: "Engineering",
        salary: 90000,
        age: 33
    },
    {
        employeeId: 4,
        name: "Ali",
        department: "Finance",
        salary: 60000,
        age: 35
    },
    {
        employeeId: 5,
        name: "John",
        department: "HR",
        salary: 55000,
        age: 26
    }
])

// Verify inserted documents.
db.employees.find().pretty()