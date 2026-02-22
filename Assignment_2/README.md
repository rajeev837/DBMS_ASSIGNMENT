# 🎓 College Database System
## 📌 Overview

This project is a Database Design Assignment for a College Database.
It includes ER modeling and SQL implementation using relational tables.

## 🗂️ Entities

Department

Student

Faculty

Course

Enrollment

## 🔗 Relationships

One Department → Many Students, Faculty, Courses

One Faculty → Teaches Multiple Courses

Many-to-Many between Student and Course (handled by Enrollment table)

## 🗄️ Tables & Keys

Department (Dept_ID – PK)

Student (Student_ID – PK, Dept_ID – FK)

Faculty (Faculty_ID – PK, Dept_ID – FK)

Course (Course_ID – PK, Dept_ID & Faculty_ID – FK)

Enrollment (Student_ID & Course_ID – Composite PK)

## 💻 Tech Used

SQL

ER Modeling
