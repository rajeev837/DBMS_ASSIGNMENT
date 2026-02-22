--SQL Implementation

-- 1. Creating Department Table
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL,
    Office_Location VARCHAR(100)
);

-- 2. Creating Faculty Table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Designation VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Dept_ID INT,
    
    CONSTRAINT fk_faculty_department
    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);

-- 3. Creating Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender VARCHAR(10),
    Contact_Number VARCHAR(15),
    Dept_ID INT,
    
    CONSTRAINT fk_student_department
    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);

-- 4.Creating  Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits > 0),
    Dept_ID INT,
    Faculty_ID INT,
    
    CONSTRAINT fk_course_department
    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID),
    
    CONSTRAINT fk_course_faculty
    FOREIGN KEY (Faculty_ID)
    REFERENCES Faculty(Faculty_ID)
);

-- 5.Creating Enrollment Table (Many-to-Many Relationship)
CREATE TABLE Enrollment (
    Student_ID INT,
    Course_ID INT,
    Semester VARCHAR(20),
    Grade VARCHAR(5),
    
    PRIMARY KEY (Student_ID, Course_ID),
    
    CONSTRAINT fk_enrollment_student
    FOREIGN KEY (Student_ID)
    REFERENCES Student(Student_ID),
    
    CONSTRAINT fk_enrollment_course
    FOREIGN KEY (Course_ID)
    REFERENCES Course(Course_ID)
);