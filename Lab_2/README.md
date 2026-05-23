# Lab 2: Database Design (ER & Relational Tables)

## 🎯 Objective
To translate Entity-Relationship (ER) models into strict relational database tables, enforcing data integrity through keys.

## 📝 Concepts Covered
*   **Entity-Relationship Modeling**: Defining entities (Student, Course, Faculty, Department, Enrollment) and their relationships.
*   **Primary Keys**: Defining unique identifiers for records (`PRIMARY KEY`).
*   **Foreign Keys**: Enforcing referential integrity across tables (`FOREIGN KEY ... REFERENCES`).
*   **Data Types**: Selecting appropriate data types for attributes (`VARCHAR`, `INT`, `DATE`).

## 📂 Files Included
*   `solution/ER_Diagram.png`: A visual representation of the database schema generated from Mermaid.js.
*   `tables.sql`: The complete DDL script to create the relational schema for the College Database.

## 🚀 Instructions
Execute the `tables.sql` file to build the structural foundation of the College Database. **Note:** Tables must be created in the correct order to satisfy Foreign Key constraints (e.g., `Department` must be created before `Faculty` or `Student`).
