-- Lab 5: Data Retrieval from Multiple Tables Using JOINs

-- Part A: Student-Enrollment Relationship

-- 1. Display StudentID and Name from Student table along with CourseID from Enrollment table.
SELECT S.StudentID, S.Name, E.CourseID
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID;

-- 2. Display student Name and Semester for all enrolled students.
SELECT S.Name, E.Semester
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID;

-- 3. Display student Name and Grade obtained in each course.
SELECT S.Name, E.Grade
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID;


-- Part B: Course-Faculty Relationship

-- 4. Display CourseName and Credits along with the Faculty Name who teaches the course.
SELECT C.CourseName, C.Credits, F.Name AS FacultyName
FROM Course AS C
INNER JOIN Faculty AS F ON C.FacultyID = F.FacultyID;

-- 5. Display all courses taught by a faculty member whose FacultyID is 'F201'.
SELECT C.CourseName, C.Credits
FROM Course AS C
INNER JOIN Faculty AS F ON C.FacultyID = F.FacultyID
WHERE F.FacultyID = 'F201';

-- 6. Display faculty Name and Designation along with the CourseName they teach.
SELECT F.Name, F.Designation, C.CourseName
FROM Faculty AS F
INNER JOIN Course AS C ON F.FacultyID = C.FacultyID;


-- Part C: Student-Course-Enrollment Relationship

-- 7. Display student Name along with CourseName for all enrollments.
SELECT S.Name AS StudentName, C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID;

-- 8. Display student Name, CourseName, and Semester.
SELECT S.Name AS StudentName, C.CourseName, E.Semester
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID;

-- 9. Display student Name, CourseName, and Grade for Semester 4 only.
SELECT S.Name AS StudentName, C.CourseName, E.Grade
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID
WHERE E.Semester = 4;

-- 10. Display all courses taken by a student whose StudentID is 'S401'.
SELECT C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID
WHERE S.StudentID = 'S401';


-- Part D: Department-Based JOIN Queries

-- 11. Display student Name and DepartmentID along with CourseName.
SELECT S.Name AS StudentName, S.DepartmentID, C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID;

-- 12. Display department-wise list of courses using DepartmentID.
SELECT D.DepartmentID, D.DepartmentName, C.CourseName
FROM Department AS D
INNER JOIN Course AS C ON D.DepartmentID = C.DepartmentID;

-- 13. Display faculty Name along with department name they belong to.
SELECT F.Name AS FacultyName, D.DepartmentName
FROM Faculty AS F
INNER JOIN Department AS D ON F.DepartmentID = D.DepartmentID;


-- Part E: JOIN with Filtering and Sorting

-- 14. Display student Name and CourseName for students belonging to Department 'D101'.
SELECT S.Name AS StudentName, C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID
WHERE S.DepartmentID = 'D101';

-- 15. Display student Name and CourseName sorted by student name in ascending order.
SELECT S.Name AS StudentName, C.CourseName
FROM Student AS S
INNER JOIN Enrollment AS E ON S.StudentID = E.StudentID
INNER JOIN Course AS C ON E.CourseID = C.CourseID
ORDER BY S.Name ASC;

-- 16. Display faculty Name and CourseName sorted by course credits in descending order.
SELECT F.Name AS FacultyName, C.CourseName
FROM Faculty AS F
INNER JOIN Course AS C ON F.FacultyID = C.FacultyID
ORDER BY C.Credits DESC;


-- Part F: Analytical JOIN Queries
-- (Note: These queries require GROUP BY which is officially covered in Lab 6, but they are requested here under Analytical JOIN Queries)

-- 17. Display number of students enrolled in each course.
SELECT C.CourseName, COUNT(E.StudentID) AS NumberOfStudents
FROM Course AS C
INNER JOIN Enrollment AS E ON C.CourseID = E.CourseID
GROUP BY C.CourseName;

-- 18. Display number of courses taught by each faculty member.
SELECT F.Name AS FacultyName, COUNT(C.CourseID) AS NumberOfCourses
FROM Faculty AS F
INNER JOIN Course AS C ON F.FacultyID = C.FacultyID
GROUP BY F.Name;

-- 19. Display department-wise count of students.
SELECT D.DepartmentName, COUNT(S.StudentID) AS StudentCount
FROM Department AS D
INNER JOIN Student AS S ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentName;

-- 20. Display course name along with maximum grade awarded in that course.
-- Note: MIN() on Grade acts as Max mathematically because 'A' < 'B' < 'C' in string comparison. Or MAX if using numeric points. 
-- Using MAX() on Grade column text.
SELECT C.CourseName, MIN(E.Grade) AS BestGrade
FROM Course AS C
INNER JOIN Enrollment AS E ON C.CourseID = E.CourseID
GROUP BY C.CourseName;
