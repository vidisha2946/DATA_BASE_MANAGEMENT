CREATE TABLE STUDENT_D (
    no INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);

CREATE TABLE ACADEMIC (
    Rno INT,
    SPI DECIMAL(3,1),
    Bklog INT
);

CREATE TABLE DEPARTMENT (
    DID INT,
    DName VARCHAR(50)
);
INSERT INTO STUDENT_D (no, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

INSERT INTO DEPARTMENT (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');


SELECT *FROM STUDENT_D
SELECT *FROM ACADEMIC
SELECT *FROM DEPARTMENT

--⮚ Sub-Queries 

--1. Display details of students who are from computer department. 

SELECT *FROM STUDENT_D
WHERE DID = (SELECT DID
            FROM DEPARTMENT
            WHERE DName = 'Computer'
);

-- 2.Displays name of students whose SPI is more than 8. 

SELECT Name FROM STUDENT_D
WHERE no IN (SELECT Rno
            FROM ACADEMIC
            WHERE SPI > 8
);

--3. Display details of students of computer department who belongs to Rajkot city.

SELECT *FROM STUDENT_D
WHERE City = 'Rajkot'
AND DID = (SELECT DID
            FROM DEPARTMENT
            WHERE DName = 'Computer'
);

--4. Find total number of students of electrical department. 

SELECT COUNT(*) FROM STUDENT_D
WHERE DID = (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Electrical'
);

--5. Display name of student who is having maximum SPI. 

SELECT Name FROM STUDENT_D
WHERE no = (
    SELECT Rno
    FROM ACADEMIC
    WHERE SPI = (
        SELECT MAX(SPI)
        FROM ACADEMIC
    )
);

--6. Display details of students having more than 1 backlog. 

SELECT *
FROM STUDENT_D
WHERE no IN (
    SELECT Rno
    FROM ACADEMIC
    WHERE Bklog > 1
);
----------part-b----------

SELECT name
FROM STUDENT_D
WHERE DID IN (
    SELECT DID
    FROM STUDENT_D
    WHERE DID = 'Computer' OR DID = 'Mechanical'
);

----SET OPERATOR

CREATE TABLE COMPUTER (
    RollNo INT,
    Name VARCHAR(50)
);

CREATE TABLE ELECTRICAL (
    RollNo INT,
    Name VARCHAR(50)
);



INSERT INTO COMPUTER (RollNo, Name) VALUES 
(101, 'Ajay'), 
(109, 'Haresh'), 
(115, 'Manish');

INSERT INTO ELECTRICAL (RollNo, Name) VALUES 
(105, 'Ajay'), 
(107, 'Mahesh'), 
(115, 'Manish');

SELECT *FROM COMPUTER
SELECT *FROM ELECTRICAL

--1. Display name of students who is either in Computer or in Electrical. 
SELECT Name FROM COMPUTER
UNION
SELECT Name FROM ELECTRICAL;

--2. Display name of students who is either in Computer or in Electrical including duplicate data. 
SELECT Name FROM COMPUTER
UNION ALL
SELECT Name FROM ELECTRICAL;

--3. Display name of students who is in both Computer and Electrical. 
SELECT RollNo, Name
FROM COMPUTER
INTERSECT
SELECT RollNo, Name
FROM ELECTRICAL;

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM COMPUTER
EXCEPT
SELECT NAME FROM ELECTRICAL


--5. Display name of students who are in Electrical but not in Computer. 
SELECT NAME FROM ELECTRICAL
EXCEPT
SELECT NAME FROM COMPUTER

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT NAME FROM COMPUTER
UNION 
SELECT NAME FROM ELECTRICAL

--7. Display all the details of students who are in both Computer and Electrical. 
SELECT NAME FROM COMPUTER
INTERSECT
SELECT NAME FROM ELECTRICAL

--PARRT-B---

CREATE TABLE EMP_DATA (
    EID INT,
    Name VARCHAR(50)
);

CREATE TABLE CUSTOMER(
    CID INT,
    Name VARCHAR(50)
);



INSERT INTO EMP_DATA (EID, Name) VALUES 
(1, 'Ajay'), 
(9, 'Haresh'), 
(5, 'Manish');

INSERT INTO CUSTOMER(CID, Name) VALUES 
(5, 'Ajay'), 
(7, 'Mahesh'), 
(5, 'Manish');

SELECT *FROM EMP_DATA
SELECT *FROM CUSTOMER

--1. Display name of persons who is either Employee or Customer.
SELECT NAME FROM EMP_DATA
UNION 
SELECT NAME FROM CUSTOMER

--2. Display name of persons who is either Employee or Customer including duplicate data.
SELECT Name FROM COMPUTER
UNION ALL
SELECT Name FROM ELECTRICAL;

--3. Display name of persons who is both Employee as well as Customer.
SELECT NAME FROM EMP_DATA
INTERSECT
SELECT NAME FROM CUSTOMER

--4. Display name of persons who are Employee but not Customer.
SELECT NAME FROM EMP_DATA
EXCEPT
SELECT NAME FROM CUSTOMER

--5. Display name of persons who are Customer but not Employee. 
SELECT NAME FROM CUSTOMER
EXCEPT
SELECT NAME FROM EMP_DATA

--PART-C

--1. Display name of persons who is either Employee or Customer.
SELECT NAME,EID FROM EMP_DATA
UNION 
SELECT NAME,CID FROM CUSTOMER

--2. Display name of persons who is either Employee or Customer including duplicate data.
SELECT Name,EID FROM EMP_DATA
UNION ALL
SELECT Name,CID FROM CUSTOMER;

--3. Display name of persons who is both E  mployee as well as Customer.
SELECT NAME,EID FROM EMP_DATA
INTERSECT
SELECT NAME,CID FROM CUSTOMER

--4. Display name of persons who are Employee but not Customer.
SELECT NAME,EID FROM EMP_DATA
EXCEPT
SELECT NAME,CID FROM CUSTOMER

--5. Display name of persons who are Customer but not Employee. 
SELECT NAME,CID FROM CUSTOMER
EXCEPT
SELECT NAME,EID FROM EMP_DATA







