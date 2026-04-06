8 rows selected.

SQL> -- Q1
SQL> SELECT S.STUDENT_ID, S.NAME, E.COURSE_ID
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_ID NAME                                                COURSE_ID
---------- -------------------------------------------------- ----------
       702 Rohit Kumar                                          602
       703 Aman Kumar                                           604
       704 Priya Kumari                                         605
       706 Neha Kumari                                          608
       707 Rahul Kumar                                          609
       709 Saurabh Kumar                                        608
       710 Pooja Kumari                                         610

7 rows selected.

SQL> -- Q2
SQL> SELECT S.NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

NAME                                               SEMESTER
-------------------------------------------------- --------------------
Rohit Kumar                                        5th Semester
Aman Kumar                                         5th Semester
Priya Kumari                                       5th Semester
Neha Kumari                                        5th Semester
Rahul Kumar                                        5th Semester
Saurabh Kumar                                      5th Semester
Pooja Kumari                                       5th Semester

7 rows selected.

SQL> -- Q3
SQL> SELECT S.NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

NAME                                               GRADE
-------------------------------------------------- -----
Rohit Kumar                                        B+
Aman Kumar                                         A
Priya Kumari                                       A+
Neha Kumari                                        A
Rahul Kumar                                        B+
Saurabh Kumar                                      A+
Pooja Kumari                                       B

7 rows selected.

SQL> -- Q4
SQL> SELECT C.COURSE_NAME, C.CREDITS, F.NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID;

COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Database Management Systems                                 4
Ehtasham

Data Structures and Algorithms                              4
Arun Kumar

Structural Analysis                                         4
Kunal Kumar


COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Basic Electrical Engineering                                4
Hare Krishna Mishra

Power Systems                                               4
Mitesh Kumar

Introduction to Artificial Intelligence                     3
Sujeet Kumar


COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Object Oriented Programming                                 4
Praveen Kumar

Operating Systems                                           4
Manisha Kumari Singh


8 rows selected.

SQL> -- Q5
SQL> SELECT C.COURSE_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID
  5  WHERE F.FACULTY_ID = 201;

no rows selected

SQL> -- Q6
SQL> SELECT F.NAME, F.DESIGNATION, C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID;

NAME
--------------------------------------------------
DESIGNATION
------------------------------
COURSE_NAME
--------------------------------------------------
Ehtasham
Assistant Professor
Database Management Systems

Arun Kumar
Assistant Professor (Guest)
Data Structures and Algorithms

NAME
--------------------------------------------------
DESIGNATION
------------------------------
COURSE_NAME
--------------------------------------------------

Kunal Kumar
Assistant Professor
Structural Analysis

Hare Krishna Mishra
Assistant Professor

NAME
--------------------------------------------------
DESIGNATION
------------------------------
COURSE_NAME
--------------------------------------------------
Basic Electrical Engineering

Mitesh Kumar
Assistant Professor
Power Systems

Sujeet Kumar

NAME
--------------------------------------------------
DESIGNATION
------------------------------
COURSE_NAME
--------------------------------------------------
Assistant Professor
Introduction to Artificial Intelligence

Praveen Kumar
Assistant Professor
Object Oriented Programming


NAME
--------------------------------------------------
DESIGNATION
------------------------------
COURSE_NAME
--------------------------------------------------
Manisha Kumari Singh
Assistant Professor
Operating Systems


8 rows selected.

SQL> -- Q7
SQL> SELECT S.NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Rohit Kumar
Data Structures and Algorithms

Aman Kumar
Introduction to Artificial Intelligence

Priya Kumari
Object Oriented Programming


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Neha Kumari
Structural Analysis

Rahul Kumar
Basic Electrical Engineering

Saurabh Kumar
Structural Analysis


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Pooja Kumari
Power Systems


7 rows selected.

SQL> -- Q8
SQL> SELECT S.NAME, C.COURSE_NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Rohit Kumar
Data Structures and Algorithms                     5th Semester

Aman Kumar
Introduction to Artificial Intelligence            5th Semester

Priya Kumari
Object Oriented Programming                        5th Semester


NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Neha Kumari
Structural Analysis                                5th Semester

Rahul Kumar
Basic Electrical Engineering                       5th Semester

Saurabh Kumar
Structural Analysis                                5th Semester


NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Pooja Kumari
Power Systems                                      5th Semester


7 rows selected.

SQL> -- Q9
SQL> SELECT S.NAME, C.COURSE_NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE E.SEMESTER = '4';

no rows selected

SQL> -- Q10
SQL> SELECT C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE S.STUDENT_ID = 401;

no rows selected

SQL> -- Q11
SQL> SELECT S.NAME, S.DEPARTMENT_ID, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Rohit Kumar                                                    1
Data Structures and Algorithms

Aman Kumar                                                     7
Introduction to Artificial Intelligence

Priya Kumari                                                   7
Object Oriented Programming


NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Neha Kumari                                                    8
Structural Analysis

Rahul Kumar                                                    9
Basic Electrical Engineering

Saurabh Kumar                                                  8
Structural Analysis


NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Pooja Kumari                                                   9
Power Systems


7 rows selected.

SQL> -- Q12
SQL> SELECT D.DEPARTMENT_ID, C.COURSE_NAME
  2  FROM DEPARTMENT D
  3  INNER JOIN COURSE C
  4  ON D.DEPARTMENT_ID = C.DEPARTMENT_ID;

DEPARTMENT_ID COURSE_NAME
------------- --------------------------------------------------
            1 Data Structures and Algorithms
            1 Database Management Systems
            7 Introduction to Artificial Intelligence
            7 Object Oriented Programming
            7 Operating Systems
            8 Structural Analysis
            9 Basic Electrical Engineering
            9 Power Systems

8 rows selected.

SQL> -- Q13
SQL> SELECT F.NAME, D.DEPARTMENT_NAME
  2  FROM FACULTY F
  3  INNER JOIN DEPARTMENT D
  4  ON F.DEPARTMENT_ID = D.DEPARTMENT_ID;

NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Ehtasham
Computer Science Engineering

Arun Kumar
Computer Science Engineering

Akhilesh Kumar
Civil Engineering with Computer


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Kunal Kumar
Civil Engineering with Computer

Nishikant Kumar
Civil Engineering with Computer

Vicky Anand
Civil Engineering with Computer


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Pankaj Kumar
Civil Engineering with Computer

Raushan Anand
Civil Engineering with Computer

Hare Krishna Mishra
Electrical and Electronics Engineering


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Ashish Kumar Suman
Electrical and Electronics Engineering

Mitesh Kumar
Electrical and Electronics Engineering

Sujeet Kumar
Computer Science and Engineering (AI and ML)


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Praveen Kumar
Computer Science and Engineering (AI and ML)

Manisha Kumari Singh
Computer Science and Engineering (AI and ML)


14 rows selected.

SQL> -- Q14
SQL> SELECT S.NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE S.DEPARTMENT_ID = 101;

no rows selected

SQL> -- Q15
SQL> SELECT S.NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  ORDER BY S.NAME ASC;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Aman Kumar
Introduction to Artificial Intelligence

Neha Kumari
Structural Analysis

Pooja Kumari
Power Systems


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Priya Kumari
Object Oriented Programming

Rahul Kumar
Basic Electrical Engineering

Rohit Kumar
Data Structures and Algorithms


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Saurabh Kumar
Structural Analysis


7 rows selected.

SQL> -- Q16
SQL> SELECT F.NAME, C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID
  5  ORDER BY C.CREDITS DESC;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Ehtasham
Database Management Systems

Arun Kumar
Data Structures and Algorithms

Kunal Kumar
Structural Analysis


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Manisha Kumari Singh
Operating Systems

Mitesh Kumar
Power Systems

Hare Krishna Mishra
Basic Electrical Engineering


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Praveen Kumar
Object Oriented Programming

Sujeet Kumar
Introduction to Artificial Intelligence


8 rows selected.

SQL> -- Q17
SQL> SELECT C.COURSE_NAME, COUNT(E.STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM COURSE C
  3  INNER JOIN ENROLLMENT E
  4  ON C.COURSE_ID = E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME                                        TOTAL_STUDENTS
-------------------------------------------------- --------------
Data Structures and Algorithms                             1
Introduction to Artificial Intelligence                    1
Object Oriented Programming                                1
Structural Analysis                                        2
Basic Electrical Engineering                               1
Power Systems                                              1

6 rows selected.

SQL> -- Q18
SQL> SELECT F.NAME, COUNT(C.COURSE_ID) AS TOTAL_COURSES
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID
  5  GROUP BY F.NAME;

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

SQL> -- Q19
SQL> SELECT D.DEPARTMENT_NAME, COUNT(S.STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM DEPARTMENT D
  3  INNER JOIN STUDENT S
  4  ON D.DEPARTMENT_ID = S.DEPARTMENT_ID
  5  GROUP BY D.DEPARTMENT_NAME;

DEPARTMENT_NAME                                    TOTAL_STUDENTS
-------------------------------------------------- --------------
Computer Science Engineering                               2
Computer Science and Engineering (AI and ML)               2
Civil Engineering                                          2
Civil Engineering with Computer                            2
Electrical and Electronics Engineering                     2

SQL> -- Q20
SQL> SELECT C.COURSE_NAME, MAX(E.GRADE) AS MAX_GRADE
  2  FROM COURSE C
  3  INNER JOIN ENROLLMENT E
  4  ON C.COURSE_ID = E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME                                        MAX_G
-------------------------------------------------- -----
Data Structures and Algorithms                     B+
Introduction to Artificial Intelligence            A
Object Oriented Programming                        A+
Structural Analysis                                A+
Basic Electrical Engineering                       B+
Power Systems                                      B

6 rows selected.