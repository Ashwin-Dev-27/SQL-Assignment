# Lab 5: Data Retrieval from Multiple Tables Using JOINs

## 🎯 Objective
To master the ability to combine rows from two or more tables based on a related column between them, utilizing `INNER JOIN`.

## 📝 Concepts Covered
*   **Table Aliasing (`AS`)**: Creating short aliases for tables to make queries with multiple joins cleaner and easier to read (e.g., `FROM Student AS S`).
*   **Primary/Foreign Key Connections (`ON`)**: Explicitly mapping the relationships between tables.
*   **Two-Table JOINs**: Connecting basic entities (e.g., Student and Enrollment).
*   **Multi-Table JOINs**: Chaining JOINs to link three or more entities (e.g., Student -> Enrollment -> Course).

## 🚀 Instructions
Execute `queries.sql` to observe how data is aggregated from across the schema into single, readable result sets. This lab bridges the gap between raw IDs and readable string values (like replacing a `DepartmentID` with a `DepartmentName`).
