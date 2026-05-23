# Lab 6: Data Aggregation using GROUP BY and HAVING

## 🎯 Objective
To analyze and summarize data using SQL aggregate functions and grouping mechanisms without modifying the stored data.

## 📝 Concepts Covered
*   **Aggregate Functions**: Using `COUNT()`, `MAX()`, `MIN()`, and `AVG()` to perform calculations across sets of rows.
*   **Grouping (`GROUP BY`)**: Organizing rows that have the same values into summary rows (e.g., "find the number of students *per department*").
*   **Filtering Grouped Data (`HAVING`)**: Applying filters to the results of a `GROUP BY` clause (e.g., "only show departments with *more than 3* students"). *Note: The `WHERE` clause cannot be used with aggregate functions.*
*   **Aggregating Across JOINs**: Grouping data after merging multiple tables.

## 🚀 Instructions
Run the `queries.sql` file. These queries represent typical "report-generation" tasks you would see in a real business intelligence environment!
