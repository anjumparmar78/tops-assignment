create database Workers;
use Workers;


CREATE TABLE Worker (
    WORKER_ID INT ,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY int,
    JOINING_DATE timestamp,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Nihanka', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 20000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

select * from worker;
SELECT *FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

SELECT *FROM Worker
WHERE FIRST_NAME IN ('Vipul', 'Satish');

SELECT *FROM Worker
WHERE FIRST_NAME LIKE '_____h';


SELECT *FROM Worker
WHERE SALARY BETWEEN 100000 AND 80000;


SELECT *FROM Worker
WHERE (FIRST_NAME, DEPARTMENT) IN (
    SELECT FIRST_NAME, DEPARTMENT
    FROM Worker
    GROUP BY FIRST_NAME, DEPARTMENT
    HAVING COUNT(*) > 1
);
SELECT *FROM worker
LIMIT 6;

SELECT DEPARTMENT, COUNT(*) AS employee_count
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

SELECT DEPARTMENT, COUNT(*) AS employee_count
FROM Worker
GROUP BY DEPARTMENT;

SELECT W.DEPARTMENT, W.FIRST_NAME, W.SALARY
FROM Worker W
WHERE W.SALARY = (
    SELECT MAX(SALARY)
    FROM Worker
    WHERE DEPARTMENT = W.DEPARTMENT
);






create database school

use school

CREATE TABLE student (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class INT,
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO student (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB) VALUES
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-08'),
(1002, 'Maahi Agarwal', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'Jahanvi Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-03-08'),
(1008, 'Sahil Saras', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'),
(1009, 'Akshra Agarwal', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'),
(1010, 'Stuti Mishra', 'Female', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'Harsh Agarwal', 'Male', 42, 11, 'C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'Male', 49, 12, 'C', 'Commerce', '1998-06-28'),
(1013, 'Akriti Saxena', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'Tani Rastogi', 'Female', 82, 12, 'A', 'Science', '2008-11-23');

select* from student;

SELECT StdName,
 DOB FROM student;
 
 SELECT * FROM student
 WHERE Percentage >= 80;

SELECT StdName, Stream, Percentage 
FROM student 
WHERE Percentage > 80;

SELECT * FROM student 
WHERE Stream = 'Science' AND Percentage > 75;





