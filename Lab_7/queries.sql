-- Lab 7: Subqueries (Nested Queries)

-- Part A: Basic Subqueries

-- 1. Display names of students who belong to the same department as student 'S401'.
SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID FROM Student WHERE StudentID = 'S401'
);

-- 2. Display students who have the same gender as student 'S402'.
SELECT *
FROM Student
WHERE Gender = (
    SELECT Gender FROM Student WHERE StudentID = 'S402'
);

-- 3. Display students belonging to the same department as 'S403'.
SELECT *
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID FROM Student WHERE StudentID = 'S403'
);


-- Part B: Subqueries with IN

-- 4. Display students whose DepartmentID exists where Gender is 'Female'.
SELECT *
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID FROM Student WHERE Gender = 'Female'
);

-- 5. Display students whose StudentID appears in the Enrollment table.
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID FROM Enrollment
);

-- 6. Display students who are enrolled in any course.
-- (This is logically identical to Question 5 using IN)
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID FROM Enrollment
);


-- Part C: Subqueries with Aggregate Functions

-- 7. Display courses having credits greater than average credits.
SELECT CourseName, Credits
FROM Course
WHERE Credits > (
    SELECT AVG(Credits) FROM Course
);

-- 8. Display students whose StudentID is greater than the average StudentID.
-- Note: Assuming numeric comparison based on taking the substring of 'S401', etc. 
-- Standard SQL cast string 'S401' by removing 'S' first.
SELECT *
FROM Student
WHERE CAST(SUBSTR(StudentID, 2) AS SIGNED) > (
    SELECT AVG(CAST(SUBSTR(StudentID, 2) AS SIGNED))
    FROM Student
);

-- 9. Display departments having more students than the average number of students per department.
SELECT DepartmentID, COUNT(StudentID) AS StudentCount
FROM Student
GROUP BY DepartmentID
HAVING COUNT(StudentID) > (
    SELECT AVG(DeptCount) FROM (
        SELECT COUNT(StudentID) AS DeptCount FROM Student GROUP BY DepartmentID
    ) AS AvgStudents
);


-- Part D: Subqueries Instead of JOIN

-- 10. Display names of students who are enrolled in courses (without using JOIN).
SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID FROM Enrollment
);

-- 11. Display students who are allocated to any department (using subquery logic).
SELECT *
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID FROM Department
);

-- 12. Display courses that have at least one student enrolled.
SELECT *
FROM Course C
WHERE EXISTS (
    SELECT * FROM Enrollment E WHERE E.CourseID = C.CourseID
);


-- Part E: Analytical Subqueries

-- 13. Display the course with maximum credits.
SELECT *
FROM Course
WHERE Credits = (
    SELECT MAX(Credits) FROM Course
);

-- 14. Display students who are enrolled in more than one course.
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID 
    FROM Enrollment 
    GROUP BY StudentID 
    HAVING COUNT(CourseID) > 1
);

-- 15. Display departments having the maximum number of students.
SELECT DepartmentID, COUNT(StudentID) AS StudentCount
FROM Student
GROUP BY DepartmentID
HAVING COUNT(StudentID) = (
    SELECT MAX(DeptCount) FROM (
        SELECT COUNT(StudentID) AS DeptCount FROM Student GROUP BY DepartmentID
    ) AS MaxStudents
);


-- Part F: Challenging Questions

-- 16. Display students who are enrolled in the same course as student 'S401'.
SELECT *
FROM Student
WHERE StudentID IN (
    SELECT StudentID 
    FROM Enrollment 
    WHERE CourseID IN (
        SELECT CourseID FROM Enrollment WHERE StudentID = 'S401'
    )
) AND StudentID != 'S401'; -- Exclude S401 themselves

-- 17. Display students who are not enrolled in any course.
SELECT *
FROM Student
WHERE StudentID NOT IN (
    SELECT StudentID FROM Enrollment
);

-- 18. Display courses that have no students enrolled.
SELECT *
FROM Course
WHERE CourseID NOT IN (
    SELECT CourseID FROM Enrollment
);
