-- Lab 3: Data Insertion

-- 1. Insert Data into Department Table
INSERT INTO Department (DepartmentID, DepartmentName, OfficeLocation) VALUES ('D101', 'Computer Science and Engineering', 'Block A');
INSERT INTO Department (DepartmentID, DepartmentName, OfficeLocation) VALUES ('D102', 'Electronics and Communication Engineering', 'Block B');
INSERT INTO Department (DepartmentID, DepartmentName, OfficeLocation) VALUES ('D103', 'Civil Engineering', 'Block C');
INSERT INTO Department (DepartmentID, DepartmentName, OfficeLocation) VALUES ('D104', 'Mechanical Engineering', 'Block D');

-- 2. Insert Data into Faculty Table
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES ('F201', 'Dr. Ramesh Kumar', 'Professor', 'ramesh.cse@bpmce.ac.in', 'D101');
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES ('F202', 'Prof. Anita Sharma', 'Assistant Professor', 'anita.cse@bpmce.ac.in', 'D101');
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES ('F203', 'Dr. Sanjay Singh', 'Associate Professor', 'sanjay.ece@bpmce.ac.in', 'D102');
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES ('F204', 'Prof. Neha Gupta', 'Assistant Professor', 'neha.ece@bpmce.ac.in', 'D102');
INSERT INTO Faculty (FacultyID, Name, Designation, Email, DepartmentID) VALUES ('F205', 'Dr. Vikas Verma', 'Professor', 'vikas.civil@bpmce.ac.in', 'D103');

-- 3. Insert Data into Course Table (Minimum 10 records)
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C301', 'Data Structures and Algorithms', 4, 'D101', 'F201');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C302', 'Operating Systems', 3, 'D101', 'F202');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C303', 'Database Management Systems', 4, 'D101', 'F201');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C304', 'Digital Electronics', 3, 'D102', 'F203');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C305', 'Signals and Systems', 4, 'D102', 'F204');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C306', 'Communication Systems', 3, 'D102', 'F203');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C307', 'Fluid Mechanics', 4, 'D103', 'F205');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C308', 'Structural Analysis', 4, 'D103', 'F205');
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C309', 'Thermodynamics', 4, 'D104', NULL);
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID, FacultyID) VALUES ('C310', 'Machine Design', 3, 'D104', NULL);

-- 4. Insert Data into Student Table (Minimum 10 records)
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S401', 'Amit Kumar', '2002-05-15', 'Male', '9876543201', 'D101');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S402', 'Priya Singh', '2003-08-22', 'Female', '9876543202', 'D101');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S403', 'Rahul Verma', '2001-12-10', 'Male', '9876543203', 'D101');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S404', 'Sneha Roy', '2002-11-05', 'Female', '9876543204', 'D102');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S405', 'Ravi Prakash', '2003-01-18', 'Male', '9876543205', 'D102');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S406', 'Anjali Kumari', '2002-07-25', 'Female', '9876543206', 'D102');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S407', 'Mohit Das', '2001-09-12', 'Male', '9876543207', 'D103');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S408', 'Nidhi Sharma', '2003-03-30', 'Female', '9876543208', 'D103');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S409', 'Abhishek Yadav', '2002-06-14', 'Male', '9876543209', 'D104');
INSERT INTO Student (StudentID, Name, DateOfBirth, Gender, ContactNumber, DepartmentID) VALUES ('S410', 'Kiran Mehta', '2003-10-02', 'Female', '9876543210', 'D104');

-- 5. Insert Data into Enrollment Table (Minimum 10 records)
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S401', 'C301', 3, 'A');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S401', 'C302', 3, 'B+');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S402', 'C301', 3, 'A+');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S402', 'C303', 4, 'A');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S403', 'C302', 3, 'B');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S404', 'C304', 3, 'A');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S404', 'C305', 4, 'B+');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S405', 'C304', 3, 'B');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S407', 'C307', 3, 'A');
INSERT INTO Enrollment (StudentID, CourseID, Semester, Grade) VALUES ('S408', 'C308', 4, 'A+');

-- Part B: Verification
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;
