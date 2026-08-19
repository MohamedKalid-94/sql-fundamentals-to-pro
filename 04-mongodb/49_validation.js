/*
============================================================
MONGODB - TOPIC 56: VALIDATION
============================================================

MongoDB supports schema validation using $jsonSchema.

This allows us to enforce rules on documents.

============================================================
*/

use companyDB

// Remove previous validation collection if present.
db.validatedEmployees.drop()

// ----------------------------------------------------------
// CREATE VALIDATED COLLECTION
// ----------------------------------------------------------

db.createCollection("validatedEmployees", {
    validator: {
        $jsonSchema: {
            bsonType: "object",

            required: [
                "employeeId",
                "name",
                "department",
                "salary",
                "age"
            ],

            properties: {
                employeeId: {
                    bsonType: "string"
                },

                name: {
                    bsonType: "string"
                },

                department: {
                    bsonType: "string"
                },

                salary: {
                    bsonType: "number",
                    minimum: 0
                },

                age: {
                    bsonType: "int",
                    minimum: 18
                }
            }
        }
    },

    validationLevel: "strict",
    validationAction: "error"
})

// ----------------------------------------------------------
// VALID DOCUMENT
// ----------------------------------------------------------

db.validatedEmployees.insertOne({
    employeeId: "EMP001",
    name: "Kalid",
    department: "Engineering",
    salary: 80000,
    age: 32
})

// ----------------------------------------------------------
// INVALID DOCUMENT
// ----------------------------------------------------------

// This should fail validation because salary is negative
// and required fields/types may not satisfy the schema.

/*
db.validatedEmployees.insertOne({
    employeeId: "ABC",
    name: "Invalid Employee",
    department: "Engineering",
    salary: -5000,
    age: 30
})
*/

// Verify valid documents.
db.validatedEmployees.find()
