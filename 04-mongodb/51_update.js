/*
============================================================
MONGODB - TOPIC 51: UPDATE
============================================================

MongoDB provides:

updateOne()
updateMany()
replaceOne()

The $set operator changes specific fields.

============================================================
*/

use companyDB

// ----------------------------------------------------------
// UPDATE ONE
// ----------------------------------------------------------

db.employees.updateOne(
    {
        name: "Kalid"
    },
    {
        $set: {
            salary: 85000
        }
    }
)

// Verify.
db.employees.findOne({
    name: "Kalid"
})

// ----------------------------------------------------------
// UPDATE MULTIPLE
// ----------------------------------------------------------

db.employees.updateMany(
    {
        department: "Engineering"
    },
    {
        $set: {
            team: "Technology"
        }
    }
)

// Verify.
db.employees.find({
    department: "Engineering"
})

// ----------------------------------------------------------
// INCREMENT VALUE
// ----------------------------------------------------------

db.employees.updateOne(
    {
        name: "Kalid"
    },
    {
        $inc: {
            salary: 5000
        }
    }
)

// Verify.
db.employees.findOne({
    name: "Kalid"
})