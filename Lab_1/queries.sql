-- Part A: DDL (Structure / Table Creation)

-- 1. Create a database named CollegeDB.
CREATE DATABASE CollegeDB;

-- 2. Select / use the database CollegeDB.
USE CollegeDB;

-- 3. Create a table Student
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- 4. Create a table Course
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

-- 5. Add a new column City in table Student.
ALTER TABLE Student ADD City VARCHAR(50);

-- 6. Add a new column Semester in table Student.
ALTER TABLE Student ADD Semester INT;

-- 7. Rename column Phone to MobileNo in table Student. (Oracle Syntax)
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

-- 8. Delete (drop) the table Course.
DROP TABLE Course;


-- Part B: DML (Insert / Update / Delete / View Data)

-- 9. Insert 5 student records into Student.
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES (101, 'Rahul', 'CSE', 19, '9876543210', 'Delhi', 1);
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES (102, 'Priya', 'ECE', 21, '9876543211', 'Mumbai', 3);
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES (103, 'Amit', 'CSE', 20, '9876543212', 'Pune', 2);
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES (104, 'Neha', 'MECH', 22, '9876543213', 'Chennai', 5);
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES (105, 'Vikas', 'CIVIL', 19, '9876543214', 'Kolkata', 1);

-- 10. Display all records from Student.
SELECT * FROM Student;

-- 11. Display only RollNo and Name from Student.
SELECT RollNo, Name FROM Student;

-- 12. Display all students from department "CSE".
SELECT * FROM Student WHERE Dept = 'CSE';

-- 13. Display all students whose age is greater than 20.
SELECT * FROM Student WHERE Age > 20;

-- 14. Update the department of RollNo = 101 to "ECE".
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

-- 15. Update the city of student "Rahul" to "Patna".
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

-- 16. Increase age of all students by 1 year.
UPDATE Student SET Age = Age + 1;

-- 17. Delete record of student whose RollNo = 105.
DELETE FROM Student WHERE RollNo = 105;

-- 18. Delete all records from Student (table should remain).
DELETE FROM Student;
