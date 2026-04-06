 SELECT Student_ID AS Roll_No,
  2         Name AS Student_Name,
  3         DOB AS Date_of_Birth,
  4         Gender AS Gender,
  5         Contact_No AS Phone_Number,
  6         Department_ID AS Dept_ID
  7  FROM Student;

   ROLL_NO STUDENT_NAME                                       DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     PHONE_NUMBER       DEPT_ID
---------- --------------- ----------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789               1

       702 Rohit Kumar                                        20-AUG-03
Male       9234567890               1

       703 Aman Kumar                                         15-FEB-03
Male       9345678901               7


   ROLL_NO STUDENT_NAME                                       DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     PHONE_NUMBER       DEPT_ID
---------- --------------- ----------
       704 Priya Kumari                                       05-NOV-03
Female     9456789012               7

       705 Vikas Kumar                                        18-JUN-03
Male       9567890123               6

       706 Neha Kumari                                        09-SEP-03
Female     9678901234               8


   ROLL_NO STUDENT_NAME                                       DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     PHONE_NUMBER       DEPT_ID
---------- --------------- ----------
       707 Rahul Kumar                                        22-JAN-03
Male       9789012345               9

       708 Anjali Kumari                                      30-APR-03
Female     9890123456               6

       709 Saurabh Kumar                                      14-DEC-03
Male       9912345678               8


   ROLL_NO STUDENT_NAME                                       DATE_OF_B
---------- -------------------------------------------------- ---------
GENDER     PHONE_NUMBER       DEPT_ID
---------- --------------- ----------
       710 Pooja Kumari                                       27-JUL-03
Female     9923456789               9


10 rows selected.

SQL> SELECT Student_ID AS Roll_No,
  2         Name AS Student_Name,
  3         Department_ID AS Dept_ID
  4  FROM Student;

   ROLL_NO STUDENT_NAME                                          DEPT_ID
---------- -------------------------------------------------- ----------
       701 Alok Kumar                                                  1
       702 Rohit Kumar                                                 1
       703 Aman Kumar                                                  7
       704 Priya Kumari                                                7
       705 Vikas Kumar                                                 6
       706 Neha Kumari                                                 8
       707 Rahul Kumar                                                 9
       708 Anjali Kumari                                               6
       709 Saurabh Kumar                                               8
       710 Pooja Kumari                                                9

10 rows selected.

SQL> SELECT Faculty_ID AS Faculty_ID,
  2         Name AS Faculty_Name,
  3         Designation AS Job_Title,
  4         Email AS Email_Address
  5  FROM Faculty;

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
       403 Ehtasham
Assistant Professor
ehtasham47@gmail.com

       404 Arun Kumar
Assistant Professor (Guest)
arunkr75@gmail.com

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------

       501 Akhilesh Kumar
Assistant Professor (HoD)
akhileshkumar3804@gmail.com

       502 Kunal Kumar
Assistant Professor

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
kunal1989kumar@gmail.com

       503 Nishikant Kumar
Assistant Professor
nishikantbpmce32@gmail.com

       504 Vicky Anand

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
Assistant Professor
vickya.pg18@nitp.ac.in

       505 Pankaj Kumar
Assistant Professor
pankajkumarpk8888@gmail.com


FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
       506 Raushan Anand
Assistant Professor
raushanbpmce@gmail.com

       510 Hare Krishna Mishra
Assistant Professor
hare.dbit@gmail.com

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------

       511 Ashish Kumar Suman
Assistant Professor
sumanashish.rkt@gmail.com

       512 Mitesh Kumar
Assistant Professor

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
mitesh.sva@gmail.com

       513 Sujeet Kumar
Assistant Professor
ksujeet.cs@gmail.com

       514 Praveen Kumar

FACULTY_ID FACULTY_NAME
---------- --------------------------------------------------
JOB_TITLE
------------------------------
EMAIL_ADDRESS
--------------------------------------------------
Assistant Professor
praveenkumaryadav782@gmail.com

       515 Manisha Kumari Singh
Assistant Professor
manisha.ks241@gmail.com


14 rows selected.

SQL> SELECT Course_ID   AS Course_Code,
  2         Course_Name AS Course_Title,
  3         Credits     AS Credit_Value,
  4         Department_ID AS Dept_ID,
  5         Faculty_ID  AS Instructor_ID
  6  FROM Course;

COURSE_CODE COURSE_TITLE                                       CREDIT_VALUE
----------- -------------------------------------------------- ------------
   DEPT_ID INSTRUCTOR_ID
---------- -------------
        602 Data Structures and Algorithms                                4
         1           404

        603 Database Management Systems                                   4
         1           403

        604 Introduction to Artificial Intelligence                       3
         7           513


COURSE_CODE COURSE_TITLE                                       CREDIT_VALUE
----------- -------------------------------------------------- ------------
   DEPT_ID INSTRUCTOR_ID
---------- -------------
        605 Object Oriented Programming                                   4
         7           514

        606 Operating Systems                                             4
         7           515

        608 Structural Analysis                                           4
         8           502


COURSE_CODE COURSE_TITLE                                       CREDIT_VALUE
----------- -------------------------------------------------- ------------
   DEPT_ID INSTRUCTOR_ID
---------- -------------
        609 Basic Electrical Engineering                                  4
         9           510

        610 Power Systems                                                 4
         9           512


8 rows selected.

SQL> SELECT Enrollment_ID AS Enroll_No,
  2         Student_ID    AS Roll_No,
  3         Course_ID     AS Course_Code,
  4         Semester      AS Semester_Name,
  5         Grade         AS Final_Grade
  6  FROM Enrollment;

 ENROLL_NO    ROLL_NO COURSE_CODE SEMESTER_NAME        FINAL
---------- ---------- ----------- -------------------- -----
       802        702         602 5th Semester         B+
       803        703         604 5th Semester         A
       804        704         605 5th Semester         A+
       806        706         608 5th Semester         A
       807        707         609 5th Semester         B+
       809        709         608 5th Semester         A+
       810        710         610 5th Semester         B

7 rows selected.

SQL> -- ===============================
SQL> -- Part B: WHERE Clause
SQL> -- ===============================
SQL>
SQL> -- Q6: Students of Department 1
SQL> SELECT *
  2  FROM Student
  3  WHERE Department_ID = 1;

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789                  1

       702 Rohit Kumar                                        20-AUG-03
Male       9234567890                  1


SQL>
SQL> -- Q7: Female Students
SQL> SELECT *
  2  FROM Student
  3  WHERE Gender = 'Female';

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       704 Priya Kumari                                       05-NOV-03
Female     9456789012                  7

       706 Neha Kumari                                        09-SEP-03
Female     9678901234                  8

       708 Anjali Kumari                                      30-APR-03
Female     9890123456                  6


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       710 Pooja Kumari                                       27-JUL-03
Female     9923456789                  9


SQL>
SQL> -- Q8: Assistant Professor Faculty
SQL> SELECT *
  2  FROM Faculty
  3  WHERE Designation LIKE 'Assistant Professor%';

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
       403 Ehtasham
Assistant Professor
ehtasham47@gmail.com                                           1

       404 Arun Kumar
Assistant Professor (Guest)
arunkr75@gmail.com                                             1

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

       501 Akhilesh Kumar
Assistant Professor (HoD)
akhileshkumar3804@gmail.com                                    8

       502 Kunal Kumar
Assistant Professor

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
kunal1989kumar@gmail.com                                       8

       503 Nishikant Kumar
Assistant Professor
nishikantbpmce32@gmail.com                                     8

       504 Vicky Anand

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
Assistant Professor
vickya.pg18@nitp.ac.in                                         8

       505 Pankaj Kumar
Assistant Professor
pankajkumarpk8888@gmail.com                                    8


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
       506 Raushan Anand
Assistant Professor
raushanbpmce@gmail.com                                         8

       510 Hare Krishna Mishra
Assistant Professor
hare.dbit@gmail.com                                            9

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

       511 Ashish Kumar Suman
Assistant Professor
sumanashish.rkt@gmail.com                                      9

       512 Mitesh Kumar
Assistant Professor

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
mitesh.sva@gmail.com                                           9

       513 Sujeet Kumar
Assistant Professor
ksujeet.cs@gmail.com                                           7

       514 Praveen Kumar

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
Assistant Professor
praveenkumaryadav782@gmail.com                                 7

       515 Manisha Kumari Singh
Assistant Professor
manisha.ks241@gmail.com                                        7


14 rows selected.

SQL>
SQL> -- Q9: Faculty of Department 7
SQL> SELECT *
  2  FROM Faculty
  3  WHERE Department_ID = 7;

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
       513 Sujeet Kumar
Assistant Professor
ksujeet.cs@gmail.com                                           7

       514 Praveen Kumar
Assistant Professor
praveenkumaryadav782@gmail.com                                 7

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

       515 Manisha Kumari Singh
Assistant Professor
manisha.ks241@gmail.com                                        7


SQL>
SQL> -- Q10: Courses with Credits >= 4
SQL> SELECT *
  2  FROM Course
  3  WHERE Credits >= 4;

 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       602 Data Structures and Algorithms                              4
            1        404

       603 Database Management Systems                                 4
            1        403

       605 Object Oriented Programming                                 4
            7        514


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       606 Operating Systems                                           4
            7        515

       608 Structural Analysis                                         4
            8        502

       609 Basic Electrical Engineering                                4
            9        510


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       610 Power Systems                                               4
            9        512


7 rows selected.

SQL>
SQL> -- Q11: Students born after 2003-01-01
SQL> SELECT *
  2  FROM Student
  3  WHERE DOB > TO_DATE('2003-01-01','YYYY-MM-DD');

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789                  1

       702 Rohit Kumar                                        20-AUG-03
Male       9234567890                  1

       703 Aman Kumar                                         15-FEB-03
Male       9345678901                  7


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       704 Priya Kumari                                       05-NOV-03
Female     9456789012                  7

       705 Vikas Kumar                                        18-JUN-03
Male       9567890123                  6

       706 Neha Kumari                                        09-SEP-03
Female     9678901234                  8


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       707 Rahul Kumar                                        22-JAN-03
Male       9789012345                  9

       708 Anjali Kumari                                      30-APR-03
Female     9890123456                  6

       709 Saurabh Kumar                                      14-DEC-03
Male       9912345678                  8


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       710 Pooja Kumari                                       27-JUL-03
Female     9923456789                  9


10 rows selected.

SQL>
SQL> -- Q12: Enrollment records of 5th Semester
SQL> SELECT *
  2  FROM Enrollment
  3  WHERE Semester = '5th Semester';

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
          802        702        602 5th Semester         B+
          803        703        604 5th Semester         A
          804        704        605 5th Semester         A+
          806        706        608 5th Semester         A
          807        707        609 5th Semester         B+
          809        709        608 5th Semester         A+
          810        710        610 5th Semester         B

7 rows selected.

SQL>
SQL>
SQL> -- ===============================
SQL> -- Part C: Sorting & Limiting
SQL> -- ===============================
SQL>
SQL> -- Q13: Students sorted by Name (Ascending)
SQL> SELECT *
  2  FROM Student
  3  ORDER BY Name ASC;

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789                  1

       703 Aman Kumar                                         15-FEB-03
Male       9345678901                  7

       708 Anjali Kumari                                      30-APR-03
Female     9890123456                  6


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       706 Neha Kumari                                        09-SEP-03
Female     9678901234                  8

       710 Pooja Kumari                                       27-JUL-03
Female     9923456789                  9

       704 Priya Kumari                                       05-NOV-03
Female     9456789012                  7


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       707 Rahul Kumar                                        22-JAN-03
Male       9789012345                  9

       702 Rohit Kumar                                        20-AUG-03
Male       9234567890                  1

       709 Saurabh Kumar                                      14-DEC-03
Male       9912345678                  8


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       705 Vikas Kumar                                        18-JUN-03
Male       9567890123                  6


10 rows selected.

SQL>
SQL> -- Q14: Students sorted by DOB (Descending)
SQL> SELECT *
  2  FROM Student
  3  ORDER BY DOB DESC;

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       709 Saurabh Kumar                                      14-DEC-03
Male       9912345678                  8

       704 Priya Kumari                                       05-NOV-03
Female     9456789012                  7

       706 Neha Kumari                                        09-SEP-03
Female     9678901234                  8


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       702 Rohit Kumar                                        20-AUG-03
Male       9234567890                  1

       710 Pooja Kumari                                       27-JUL-03
Female     9923456789                  9

       705 Vikas Kumar                                        18-JUN-03
Male       9567890123                  6


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789                  1

       708 Anjali Kumari                                      30-APR-03
Female     9890123456                  6

       703 Aman Kumar                                         15-FEB-03
Male       9345678901                  7


STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       707 Rahul Kumar                                        22-JAN-03
Male       9789012345                  9


10 rows selected.

SQL>
SQL> -- Q15: Faculty sorted by Designation
SQL> SELECT *
  2  FROM Faculty
  3  ORDER BY Designation ASC;

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
       403 Ehtasham
Assistant Professor
ehtasham47@gmail.com                                           1

       505 Pankaj Kumar
Assistant Professor
pankajkumarpk8888@gmail.com                                    8

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

       514 Praveen Kumar
Assistant Professor
praveenkumaryadav782@gmail.com                                 7

       502 Kunal Kumar
Assistant Professor

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
kunal1989kumar@gmail.com                                       8

       503 Nishikant Kumar
Assistant Professor
nishikantbpmce32@gmail.com                                     8

       504 Vicky Anand

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
Assistant Professor
vickya.pg18@nitp.ac.in                                         8

       515 Manisha Kumari Singh
Assistant Professor
manisha.ks241@gmail.com                                        7


FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
       506 Raushan Anand
Assistant Professor
raushanbpmce@gmail.com                                         8

       510 Hare Krishna Mishra
Assistant Professor
hare.dbit@gmail.com                                            9

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------

       511 Ashish Kumar Suman
Assistant Professor
sumanashish.rkt@gmail.com                                      9

       512 Mitesh Kumar
Assistant Professor

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
mitesh.sva@gmail.com                                           9

       513 Sujeet Kumar
Assistant Professor
ksujeet.cs@gmail.com                                           7

       404 Arun Kumar

FACULTY_ID NAME
---------- --------------------------------------------------
DESIGNATION
------------------------------
EMAIL                                              DEPARTMENT_ID
-------------------------------------------------- -------------
Assistant Professor (Guest)
arunkr75@gmail.com                                             1

       501 Akhilesh Kumar
Assistant Professor (HoD)
akhileshkumar3804@gmail.com                                    8


14 rows selected.

SQL>
SQL> -- Q16: Courses sorted by Credits (Descending)
SQL> SELECT *
  2  FROM Course
  3  ORDER BY Credits DESC;

 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       602 Data Structures and Algorithms                              4
            1        404

       603 Database Management Systems                                 4
            1        403

       605 Object Oriented Programming                                 4
            7        514


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       610 Power Systems                                               4
            9        512

       606 Operating Systems                                           4
            7        515

       608 Structural Analysis                                         4
            8        502


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       609 Basic Electrical Engineering                                4
            9        510

       604 Introduction to Artificial Intelligence                     3
            7        513


8 rows selected.

SQL>
SQL> -- Q17: First 3 Student records
SQL> SELECT *
  2  FROM Student
  3  FETCH FIRST 3 ROWS ONLY;

STUDENT_ID NAME                                               DOB
---------- -------------------------------------------------- ---------
GENDER     CONTACT_NO      DEPARTMENT_ID
---------- --------------- -------------
       701 Alok Kumar                                         12-MAY-03
Male       9123456789                  1

       702 Rohit Kumar                                        20-AUG-03
Male       9234567890                  1

       703 Aman Kumar                                         15-FEB-03
Male       9345678901                  7


SQL>
SQL> -- Q18: First 5 Course records
SQL> SELECT *
  2  FROM Course
  3  FETCH FIRST 5 ROWS ONLY;

 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       602 Data Structures and Algorithms                              4
            1        404

       603 Database Management Systems                                 4
            1        403

       604 Introduction to Artificial Intelligence                     3
            7        513


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       605 Object Oriented Programming                                 4
            7        514

       606 Operating Systems                                           4
            7        515


SQL> -- ===============================
SQL> -- Part D: Derived / Computed Output
SQL> -- ===============================
SQL>
SQL> -- Q19: Student Name with Calculated Age
SQL> SELECT Name,
  2         FLOOR(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Age
  3  FROM Student;

NAME                                                      AGE
-------------------------------------------------- ----------
Alok Kumar                                                 22
Rohit Kumar                                                22
Aman Kumar                                                 23
Priya Kumari                                               22
Vikas Kumar                                                22
Neha Kumari                                                22
Rahul Kumar                                                23
Anjali Kumari                                              22
Saurabh Kumar                                              22
Pooja Kumari                                               22

10 rows selected.

SQL>
SQL> -- Q20: Course Name with Credits + 1
SQL> SELECT Course_Name,
  2         Credits + 1 AS Updated_Credits
  3  FROM Course;

COURSE_NAME                                        UPDATED_CREDITS
-------------------------------------------------- ---------------
Data Structures and Algorithms                                   5
Database Management Systems                                      5
Introduction to Artificial Intelligence                          4
Object Oriented Programming                                      5
Operating Systems                                                5
Structural Analysis                                              5
Basic Electrical Engineering                                     5
Power Systems                                                    5

8 rows selected.

SQL>
SQL> -- Q21: Enrollment details with Grade renamed
SQL> SELECT Enrollment_ID,
  2         Student_ID,
  3         Course_ID,
  4         Semester,
  5         Grade AS Final_Grade
  6  FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             FINAL
------------- ---------- ---------- -------------------- -----
          802        702        602 5th Semester         B+
          803        703        604 5th Semester         A
          804        704        605 5th Semester         A+
          806        706        608 5th Semester         A
          807        707        609 5th Semester         B+
          809        709        608 5th Semester         A+
          810        710        610 5th Semester         B

7 rows selected.

SQL>
SQL> -- Q22: Student Name with Year of Birth
SQL> SELECT Name,
  2         EXTRACT(YEAR FROM DOB) AS Birth_Year
  3  FROM Student;

NAME                                               BIRTH_YEAR
-------------------------------------------------- ----------
Alok Kumar                                               2003
Rohit Kumar                                              2003
Aman Kumar                                               2003
Priya Kumari                                             2003
Vikas Kumar                                              2003
Neha Kumari                                              2003
Rahul Kumar                                              2003
Anjali Kumari                                            2003
Saurabh Kumar                                            2003
Pooja Kumari                                             2003

10 rows selected.

SQL>
SQL> -- Q23: Faculty Name with Email Domain
SQL> SELECT Name,
  2         SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
  3  FROM Faculty;

NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Ehtasham
gmail.com

Arun Kumar
gmail.com

Akhilesh Kumar
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Kunal Kumar
gmail.com

Nishikant Kumar
gmail.com

Vicky Anand
nitp.ac.in


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Pankaj Kumar
gmail.com

Raushan Anand
gmail.com

Hare Krishna Mishra
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Ashish Kumar Suman
gmail.com

Mitesh Kumar
gmail.com

Sujeet Kumar
gmail.com


NAME
--------------------------------------------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------
Praveen Kumar
gmail.com

Manisha Kumari Singh
gmail.com


14 rows selected.

SQL>