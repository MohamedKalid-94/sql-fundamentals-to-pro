# SQL Learning Journey

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-4169E1?logo=postgresql&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-Community-47A248?logo=mongodb&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

A structured, hands-on log of learning SQL (MySQL, PostgreSQL, MongoDB) from scratch — as a Python developer building toward an AI/ML career path.

## 📌 Goal

Build solid SQL fundamentals and database skills to add to my resume and prepare for technical interviews, alongside my Python background.

## ⭐ Highlights

> _(updated as I progress)_
- 🔲 Built multi-table schemas with primary/foreign keys
- 🔲 Practiced joins (INNER, LEFT, RIGHT, self-joins)
- 🔲 Wrote queries using window functions and CTEs
- 🔲 Practiced query optimization basics (EXPLAIN / indexing)
- 🔲 Solved SQL problems on LeetCode/HackerRank

## 🛠️ Tools Used

- **MySQL** 8.0 (Server + Workbench + Shell)
- **PostgreSQL** 18 (Server + pgAdmin 4)
- **MongoDB** Community (Server + Compass)

## 🗺️ Roadmap

Learning is broken into 4 sections, ~2 hours/day:

1. **SQL Fundamentals** (Syntax, WHERE, ORDER BY, INSERT, UPDATE, DELETE, aggregates, GROUP BY, etc.)
2. **MySQL** (Databases, Tables, Keys, Constraints, Views)
3. **PostgreSQL** (Tables, CRUD, Joins, Aggregates)
4. **MongoDB** (Collections, CRUD, Query Operators, Aggregations, Indexing)

Full checklist: see [`docs/roadmap-checklist.md`](./docs/roadmap-checklist.md)

## 📂 Repo Structure

```
sql-learning-journey/
├── README.md
├── docs/
│   └── roadmap-checklist.md         # Full day-by-day roadmap
├── 01-fundamentals/
│   ├── day1_syntax_where.sql
│   └── ...
├── 02-mysql/
│   ├── 16_create_database.sql
│   ├── 17_drop_database.sql
│   ├── 18_create_table.sql
│   ├── 19_drop_table.sql
│   ├── 20_alter_table.sql
│   ├── 21_not_null.sql
│   ├── 22_unique_key.sql
│   ├── 23_primary_key.sql
│   ├── 24_foreign_key.sql
│   ├── 25_default_key.sql
│   ├── 26_date.sql
│   ├── 27_views.sql
│   └── 28_add_drop_columns.sql
├── 03-postgresql/
│   ├── 29_create_table.sql
│   ├── 30_insert_into.sql
│   ├── 31_fetch_data.sql
│   ├── 32_add_column.sql
│   ├── 33_update.sql
│   ├── 34_alter_column.sql
│   ├── 35_drop_column.sql
│   ├── 36_delete.sql
│   ├── 37_drop_table.sql
│   ├── 38_operators.sql
│   ├── 39_select.sql
│   ├── 40_order_by.sql
│   ├── 41_limit.sql
│   ├── 42_min_max.sql
│   ├── 43_count_sum_avg.sql
│   ├── 44_cross_join.sql
│   ├── 45_group_by.sql
│   └── 46_exists.sql
└── 04-mongodb/
    └── ...
```

## ✅ Progress Log

| Day | Topics | Status |
|-----|--------|--------|
| 1 | SQL Syntax, WHERE | ✅ Complete |
| 2 | ORDER BY, AND/OR/NOT | ✅ Complete |
| 3 | Insert Into, Null Values | ✅ Complete |
| 4 | Update, Delete | ✅ Complete |
| 5 | Min/Max, Count/Sum/Avg | ✅ Complete |
| 6 | Union, Group By | ✅ Complete |
| 7 | Operators, NULL Values (deep dive), SELECT TOP | ✅ Complete |
| 8 | Practice Day (Fundamentals wrap-up) | ✅ Complete |

🎉 **SQL Fundamentals section (Days 1-8) complete!**

**MySQL section (Topics 16-28):**

| Topic | Name | Status |
|-------|------|--------|
| 16 | Create Database | ✅ Complete |
| 17 | Drop Database | ✅ Complete |
| 18 | Create Table | ✅ Complete |
| 19 | Drop Table | ✅ Complete |
| 20 | Alter Table | ✅ Complete |
| 21 | Not Null | ✅ Complete |
| 22 | Unique Key | ✅ Complete |
| 23 | Primary Key | ✅ Complete |
| 24 | Foreign Key | ✅ Complete |
| 25 | Default Key | ✅ Complete |
| 26 | Date | ✅ Complete |
| 27 | Views | ✅ Complete |
| 28 | Adding & Dropping Columns | ✅ Complete |

🎉 **MySQL section (Topics 16-28) complete!**

**PostgreSQL section (Topics 29-46):**

| Topic | Name | Status |
|-------|------|--------|
| 29 | Create Table | ✅ Complete |
| 30 | Insert Into | ✅ Complete |
| 31 | Fetch Data | ✅ Complete |
| 32 | Add Column | ✅ Complete |
| 33 | Update | ✅ Complete |
| 34 | Alter Column | ✅ Complete |
| 35 | Drop Column | ✅ Complete |
| 36 | Delete | ✅ Complete |
| 37 | Drop Table | ✅ Complete |
| 38 | Operators | ✅ Complete |
| 39 | Select | ✅ Complete |
| 40 | Order By | ✅ Complete |
| 41 | Limit | ✅ Complete |
| 42 | Min and Max | ✅ Complete |
| 43 | Count, Sum, Avg | ✅ Complete |
| 44 | Cross Join | ✅ Complete |
| 45 | Group By | ✅ Complete |
| 46 | Exists | ✅ Complete |

🎉 **PostgreSQL section (Topics 29-46) complete!** Next: MongoDB — Topic 47 onward.

## 📖 How to Use These Scripts

1. Install MySQL / PostgreSQL / MongoDB locally
2. Open the `.sql` file in MySQL Workbench (or equivalent GUI)
3. Run statements one at a time to follow along with the comments
4. Each script is self-contained — creates its own database/table before running queries

## 🎯 Next Steps

After completing all 4 sections, move on to advanced topics: joins in depth, window functions, CTEs, indexing/query performance, transactions, and normalization — followed by practice problems on LeetCode/HackerRank SQL.

---

🏷️ **Suggested GitHub topics for this repo:** `sql` `mysql` `postgresql` `mongodb` `learning` `python-developer` `database`
