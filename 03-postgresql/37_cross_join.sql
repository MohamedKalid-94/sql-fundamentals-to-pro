/*
============================================================
POSTGRESQL PRACTICE
TOPIC 44: CROSS JOIN
============================================================

Purpose:
    CROSS JOIN returns every possible combination
    between two tables.

If:
    Table A has 6 rows
    Table B has 3 rows

Result:
    6 x 3 = 18 rows

Important:
    CROSS JOIN does not require an ON condition.

============================================================
*/

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS projects;

-- ----------------------------------------------------------
-- EMPLOYEES TABLE
-- ----------------------------------------------------------

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);

INSERT INTO employees
(employee_id, employee_name, department)
VALUES
(1, 'Kalid', 'Engineering'),
(2, 'Ahmed', 'HR'),
(3, 'Rahman', 'Engineering'),
(4, 'Ali', 'Finance'),
(5, 'John', 'HR'),
(6, 'David', 'Engineering');

-- ----------------------------------------------------------
-- PROJECTS TABLE
-- ----------------------------------------------------------

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL
);

INSERT INTO projects
(project_id, project_name)
VALUES
(1, 'AI Project'),
(2, 'Web Development'),
(3, 'Data Analysis');

-- ----------------------------------------------------------
-- CROSS JOIN
-- Every employee is combined with every project.
-- ----------------------------------------------------------

SELECT
    e.employee_name,
    p.project_name
FROM employees AS e
CROSS JOIN projects AS p;

-- Expected number of rows:
-- 6 employees x 3 projects = 18 rows

-- ----------------------------------------------------------
-- COUNT CROSS JOIN RESULTS
-- ----------------------------------------------------------

SELECT COUNT(*) AS total_combinations
FROM employees AS e
CROSS JOIN projects AS p;
