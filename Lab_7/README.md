# Lab 7: Subqueries (Nested Queries)

## 🎯 Objective
To apply advanced SQL filtering by using queries nested inside other queries to dynamically extract, compare, and analyze data.

## 📝 Concepts Covered
*   **Single-Row Subqueries**: Using subqueries that return a single value with standard operators (`=`, `>`, `<`).
*   **Multi-Row Subqueries (`IN` / `NOT IN`)**: Filtering against a list of results returned by the inner query.
*   **Correlated Logic (`EXISTS`)**: Checking if a subquery returns *any* records at all.
*   **Subqueries vs. JOINs**: Achieving multi-table filtering using nested logic instead of `INNER JOIN` operations.
*   **Aggregate Subqueries**: Filtering data against a calculated aggregate value (e.g., finding courses with credits greater than the *average* credits).

## 🚀 Instructions
Execute `queries.sql` to test the nested logic. Subqueries are incredibly powerful tools for multi-step data deduction!
