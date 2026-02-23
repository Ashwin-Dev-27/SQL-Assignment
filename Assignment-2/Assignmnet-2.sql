CREATE TABLE department (
  Department_ID INT PRIMARY KEY AUTO_INCREMENT,
  Department_Name VARCHAR(100),
  Office_Location VARCHAR(100)
);

CREATE TABLE faculty (
  Faculty_ID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Designation VARCHAR(100),
  Email VARCHAR(100),
  Department_ID INT,
  FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

CREATE TABLE student (
  Student_ID INT PRIMARY KEY AUTO_INCREMENT,
  Student_Name VARCHAR(100),
  Date_Of_Birth DATE,
  Gender VARCHAR(10),
  Contact_Number VARCHAR(15),
  Department_ID INT,
  FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

CREATE TABLE courses (
  Course_ID INT PRIMARY KEY AUTO_INCREMENT,
  Course_Name VARCHAR(100),
  Credits INT,
  Department_ID INT,
  Faculty_ID INT,
  FOREIGN KEY (Department_ID) REFERENCES department(Department_ID),
  FOREIGN KEY (Faculty_ID) REFERENCES faculty(Faculty_ID)
);

CREATE TABLE enrolment (
  Student_ID INT,
  Course_ID INT,
  Semester INT,
  Grade VARCHAR(5),
  PRIMARY KEY (Student_ID, Course_ID),
  FOREIGN KEY (Student_ID) REFERENCES student(Student_ID),
  FOREIGN KEY (Course_ID) REFERENCES courses(Course_ID)
);