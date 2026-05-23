# Lab 3: Data Collection and Data Insertion

## 🎯 Objective
To populate a relational database schema with realistic, structured data ensuring constraints and relationships are respected.

## 📝 Concepts Covered
*   **Data Insertion Workflow**: Bulk inserting data into interconnected tables.
*   **Referential Integrity Verification**: Ensuring that foreign key values (like a `DepartmentID` in the `Student` table) match an existing primary key in the parent table.

## 🚀 Instructions
1. Ensure the tables from **Lab 2** have been successfully created.
2. Execute the `insert_data.sql` script.
3. The script inserts dummy data based on the structure of an engineering college (e.g., Computer Science, Civil Engineering) complete with faculties, students, and course enrollments.
4. The final `SELECT *` statements act as a verification step to confirm the data was inserted properly.
