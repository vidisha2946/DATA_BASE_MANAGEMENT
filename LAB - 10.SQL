USE CSE_3B_361

CREATE TABLE STUDENT_INFO(
    RNO INT,
    NAME VARCHAR(50),
    BRANCH VARCHAR(50),
    SPI INT,
    BKLOG INT
);
INSERT INTO STUDENT_INFO VALUES
(101, 'Raju','CE', 8.80 , 0 ),
(102 ,'Amit' ,'CE' ,2.20 ,3 ),
(103 ,'Sanjay', 'ME', 1.50, 6), 
(104 ,'Neha' ,'EC' ,7.65 ,1 ),
(105 ,'Meera' ,'EE' ,5.52 ,2), 
(106 ,'Mahesh' ,'EC', 4.50 ,3)
SELECT *FROM STUDENT_INFO

-----PART-A

--1. Create a view Personal with all columns. 
CREATE VIEW PERSONAL AS
SELECT * FROM STUDENT_INFO

--2. Create a view Student_Details having columns Name, Branch & SPI.  
CREATE VIEW Student_Details AS
SELECT BRANCH,NAME,SPI FROM STUDENT_INFO

--3. Create a view AcademicData having columns RNo, Name, Branch. 
CREATE VIEW ACADEMIC_DATA AS
SELECT RNO,NAME,BRANCH FROM STUDENT_INFO

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2. 
CREATE VIEW STUDENT_BKLOG AS
SELECT * FROM STUDENT_INFO
WHERE BKLOG>2

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters. 
CREATE VIEW STUDENT_PATTERN AS
SELECT RNO,NAME,BRANCH FROM STUDENT_INFO
WHERE NAME LIKE '____'

--6. Insert a new record to AcademicData view. (107, Meet, ME) 
INSERT INTO ACADEMIC_DATA VALUES(107,'MEET','ME');
SELECT *FROM ACADEMIC_DATA

--7. Update the branch of Amit from CE to ME in Student_Details view. 
UPDATE Student_Details
SET BRANCH = 'ME'
WHERE NAME = 'AMIT'

--8. Delete a student whose roll number is 104 from AcademicData view. 
DELETE ACADEMIC_DATA
WHERE RNO = 104

-------------Part – B: 

--1. Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW INFORMATION AS
SELECT *FROM STUDENT_INFO
WHERE SPI > 8.5

SELECT *FROM INFORMATION

--2. Create a view that displays 0 backlog students. 
CREATE VIEW BKLOG AS
SELECT * FROM STUDENT_INFO
WHERE BKLOG=0

--3. Create a view Computerview that displays CE branch data only. 
CREATE VIEW COMPUTERVIEW AS
SELECT *FROM STUDENT_INFO
WHERE BRANCH='CE'

-------------Part – C: 

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC. 
CREATE VIEW RESULT_EC AS
SELECT NAME,SPI FROM STUDENT_INFO
WHERE SPI <5 AND BRANCH = 'EC' 

--2. Update the result of student MAHESH to 4.90 in Result_EC view. 
UPDATE RESULT_EC 
SET SPI = 4.90
WHERE NAME ='MAHESH'
SELECT * FROM RESULT_EC

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5. 
CREATE VIEW STU_BKLOG AS
SELECT RNO,NAME,BKLOG FROM STUDENT_INFO
WHERE NAME LIKE'M%' AND BKLOG >5


--4. Drop Computerview form the database. 
DROP VIEW COMPUTERVIEW
