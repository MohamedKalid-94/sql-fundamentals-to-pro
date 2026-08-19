/*
============================================================
MONGODB - TOPIC 52: DELETE
============================================================

MongoDB provides:

deleteOne()
deleteMany()

============================================================
*/

use companyDB

// ----------------------------------------------------------
// DELETE ONE
// ----------------------------------------------------------

// Delete the employee named John.
db.employees.deleteOne({
    name: "John"
})

// Verify.
db.employees.find()

// ----------------------------------------------------------
// DELETE MANY
// ----------------------------------------------------------

// Delete employees from HR.
db.employees.deleteMany({
    department: "HR"
})

// Verify.
db.employees.find()

/*
WARNING:

The following deletes every document:

db.employees.deleteMany({})
*/