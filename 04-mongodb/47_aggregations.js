/*
============================================================
MONGODB - TOPIC 54: AGGREGATIONS
============================================================

Aggregation processes documents and produces calculated
results.

Common stages:

$match
$group
$sort
$limit
$project

Common accumulator:

$sum
$avg
$min
$max
$count

============================================================
*/

use companyDB

// ----------------------------------------------------------
// GROUP BY DEPARTMENT
// ----------------------------------------------------------

db.employees.aggregate([
    {
        $group: {
            _id: "$department",
            employeeCount: {
                $sum: 1
            }
        }
    }
])

// ----------------------------------------------------------
// TOTAL SALARY BY DEPARTMENT
// ----------------------------------------------------------

db.employees.aggregate([
    {
        $group: {
            _id: "$department",
            totalSalary: {
                $sum: "$salary"
            }
        }
    }
])

// ----------------------------------------------------------
// AVERAGE SALARY
// ----------------------------------------------------------

db.employees.aggregate([
    {
        $group: {
            _id: "$department",
            averageSalary: {
                $avg: "$salary"
            }
        }
    }
])

// ----------------------------------------------------------
// SORT TOTAL SALARY
// ----------------------------------------------------------

db.employees.aggregate([
    {
        $group: {
            _id: "$department",
            totalSalary: {
                $sum: "$salary"
            }
        }
    },
    {
        $sort: {
            totalSalary: -1
        }
    }
])

// ----------------------------------------------------------
// FILTER → GROUP → SORT
// ----------------------------------------------------------

db.employees.aggregate([
    {
        $match: {
            salary: {
                $gte: 60000
            }
        }
    },
    {
        $group: {
            _id: "$department",
            totalSalary: {
                $sum: "$salary"
            }
        }
    },
    {
        $sort: {
            totalSalary: -1
        }
    }
])
