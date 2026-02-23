Part A: DDL (Structure / Table Creation) 

1. Create a database named CollegeDB. 
CREATE DATABASE CollegeDB;

2. Select/ use the database CollegeDB. 
USE CollegeDB;

3. Create a table Student with following columns: RollNo INT, Name VARCHAR(50), Dept VARCHAR(20), Age INT, Phone VARCHAR(15). 

CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);
4. Create a table Course with columns: CourseID INT, CourseName VARCHAR(50), Credits INT.

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);
5. Add a new column City in table Student. 
ALTER TABLE Student ADD City VARCHAR(20);

6. Add a new column Semester in table Student. 
ALTER TABLE Student ADD Semester INT;

7. Rename column Phone to MobileNo in table Student. 
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

8. Delete (drop) the table Course. 
DROP TABLE Course;

Part B: DML (Insert / Update / Delete / View Data) 

9. Insert 5 student records into Student. 
INSERT INTO Student (RollNo, Name, Age, Dept, MobileNo, City, Semester) VALUES 
(101, 'Ashwin', 22, 'CSE', '8780153835', 'Patna', 6),
(102, 'Rahul', 19, 'CSE', '6580153835', 'Jharkhand', 3),
(103, 'Ajeet', 21, 'AI', '6680153835', 'JK', 7),
(104, 'Anish', 20, 'Civil', '9880153835', 'Mumbai', 2),
(105, 'Ashish', 17, 'EEE', '3680153835', 'Delhi', 1);

10. Display all records from Student. 
SELECT * FROM Student;

11. Display only RollNo and Name from Student. 
SELECT RollNo, Name FROMStudent;

12. Display all students from department "CSE". 
SELECT * FROM Student WHERE Dept = 'CSE';

13. Display all students whose age is greater than 20. 
SELECT * FROM Student WHERE Age > 20;

14. Update the department of RollNo = 101 to "ECE". 
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

15. Update the city of student "Rahul" to "Patna". 
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

16. Increase age of all students by 1 year. 
UPDATE Student SET Age = Age + 1;

17. Delete record of student whose RollNo = 105. 
DELETE FROM Student WHERE RollNo = 105;

18. Delete all records from Student (table should remain). 
TRUNCATE TABLE Student;



NORMAL
create table students(name varchar(20),roll_no int,age int, Dept varchar(20), phone int);
create table courses(course_id int,course_name varchar(20), credits int);
alter table students add city varchar(20);
alter table students add semester int;
alter table students rename column phone to Mobileno;
drop table courses;
/*insert into students values ('Ashwin',23738,18,'cse',8780153835,'patna',5);*/
/*insert into students values ('Rahul',23765,19,'cse',6580153835,'jharkhan',3);*/
/*insert into students values ('Ajeet',23735,21,'ai',6680153835,'jk',7);/*
/*insert into students values ('Anish',23798,20,'civil',9880153835,'mumbai',2);/*
/*insert into students values ('Ashish',23740,17,'eee',3680153835,'delhi',1);/*
/*Select * from students;*/
/*select roll_no from students;*/
/*select dept from students;*/
/*select * from students where age>20;*/
/*update students set dept ='ECE' where roll_no = 23738;*/
/*update students set city ='patna' where city = 'jharkhan';*/
/*update students set age =age+1;*/
/*delete from students where roll_no = 23738;*/
truncate table students; 
