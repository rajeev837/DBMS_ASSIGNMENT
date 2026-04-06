SQL> -- =========================================
SQL> -- DBMS LAB 06
SQL> -- GROUP BY and HAVING
SQL> -- =========================================
SQL>
SQL> -- ==============================
SQL> -- PART A
SQL> -- ==============================
SQL>
SQL> -- Q1
SQL> SELECT COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT;

TOTAL_STUDENTS
--------------
            10

SQL>
SQL> -- Q2
SQL> SELECT COUNT(*) AS TOTAL_FACULTY
  2  FROM FACULTY;

TOTAL_FACULTY
-------------
           14

SQL>
SQL> -- Q3
SQL> SELECT COUNT(*) AS TOTAL_COURSES
  2  FROM COURSE;

TOTAL_COURSES
-------------
            8

SQL>
SQL> -- Q4
SQL> SELECT MAX(CREDITS) AS MAX_CREDITS
  2  FROM COURSE;

MAX_CREDITS
-----------
          4

SQL>
SQL> -- Q5
SQL> SELECT MIN(CREDITS) AS MIN_CREDITS
  2  FROM COURSE;

MIN_CREDITS
-----------
          3

SQL>
SQL>
SQL> -- ==============================
SQL> -- PART B
SQL> -- ==============================
SQL>
SQL> -- Q6
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
            1              2
            7              2
            6              2
            8              2
            9              2

SQL>
SQL> -- Q7
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_FACULTY
  2  FROM FACULTY
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_FACULTY
------------- -------------
            1             2
            8             6
            9             3
            7             3

SQL>
SQL> -- Q8
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_COURSES
  2  FROM COURSE
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
            1             2
            7             3
            8             1
            9             2

SQL>
SQL> -- Q9
SQL> SELECT SEMESTER, COUNT(*) AS TOTAL_ENROLLMENTS
  2  FROM ENROLLMENT
  3  GROUP BY SEMESTER;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
5th Semester                         7

SQL>
SQL> -- Q10
SQL> SELECT GRADE, COUNT(*) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY GRADE;

GRADE TOTAL_STUDENTS
----- --------------
B+                 2
A                  2
A+                 2
B                  1

SQL>
SQL>
SQL> -- ==============================
SQL> -- PART C
SQL> -- ==============================
SQL>
SQL> -- Q11
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 3;

no rows selected

SQL>
SQL> -- Q12
SQL> SELECT SEMESTER, COUNT(*) AS TOTAL_ENROLLMENTS
  2  FROM ENROLLMENT
  3  GROUP BY SEMESTER
  4  HAVING COUNT(*) > 2;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
5th Semester                         7

SQL>
SQL> -- Q13
SQL> SELECT GRADE, COUNT(*) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY GRADE
  4  HAVING COUNT(*) > 1;

GRADE TOTAL_STUDENTS
----- --------------
B+                 2
A                  2
A+                 2

SQL>
SQL> -- Q14
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_COURSES
  2  FROM COURSE
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 1;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
            1             2
            7             3
            9             2

SQL>
SQL>
SQL> -- ==============================
SQL> -- PART D
SQL> -- ==============================
SQL>
SQL> -- Q15
SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY COURSE_ID;

 COURSE_ID TOTAL_STUDENTS
---------- --------------
       602              1
       604              1
       605              1
       608              2
       609              1
       610              1

6 rows selected.

SQL>
SQL> -- Q16  (FIXED ✔)
SQL> SELECT COURSE.COURSE_NAME, COUNT(ENROLLMENT.STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM COURSE
  3  INNER JOIN ENROLLMENT
  4  ON COURSE.COURSE_ID = ENROLLMENT.COURSE_ID
  5  GROUP BY COURSE.COURSE_NAME;

COURSE_NAME                                        TOTAL_STUDENTS
-------------------------------------------------- --------------
Data Structures and Algorithms                                  1
Introduction to Artificial Intelligence                         1
Object Oriented Programming                                     1
Structural Analysis                                             2
Basic Electrical Engineering                                    1
Power Systems                                                   1

6 rows selected.

SQL>
SQL> -- Q17
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_STUDENTS
  2  FROM STUDENT
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
            1              2
            7              2
            6              2
            8              2
            9              2

SQL>
SQL> -- Q18
SQL> SELECT FACULTY.NAME, COUNT(COURSE.COURSE_ID) AS TOTAL_COURSES
  2  FROM FACULTY
  3  INNER JOIN COURSE
  4  ON FACULTY.FACULTY_ID = COURSE.FACULTY_ID
  5  GROUP BY FACULTY.NAME;

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Ehtasham                                                       1
Arun Kumar                                                     1
Kunal Kumar                                                    1
Hare Krishna Mishra                                            1
Mitesh Kumar                                                   1
Sujeet Kumar                                                   1
Praveen Kumar                                                  1
Manisha Kumari Singh                                           1

8 rows selected.

SQL>
SQL>
SQL> -- ==============================
SQL> -- PART E
SQL> -- ==============================
SQL>
SQL> -- Q19  (FIXED ✔)
SQL> SELECT COURSE.COURSE_NAME, MAX(ENROLLMENT.GRADE) AS MAX_GRADE
  2  FROM COURSE
  3  INNER JOIN ENROLLMENT
  4  ON COURSE.COURSE_ID = ENROLLMENT.COURSE_ID
  5  GROUP BY COURSE.COURSE_NAME;

COURSE_NAME                                        MAX_G
-------------------------------------------------- -----
Data Structures and Algorithms                     B+
Introduction to Artificial Intelligence            A
Object Oriented Programming                        A+
Structural Analysis                                A+
Basic Electrical Engineering                       B+
Power Systems                                      B

6 rows selected.

SQL>
SQL> -- Q20
SQL> SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL_COURSES
  2  FROM COURSE
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
            1             2
            7             3
            8             1
            9             2

SQL>
SQL> -- Q21
SQL> SELECT SEMESTER, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY SEMESTER;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
5th Semester                      7

SQL>
SQL> -- Q22
SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM ENROLLMENT
  3  GROUP BY COURSE_ID
  4  HAVING COUNT(STUDENT_ID) > 2;
