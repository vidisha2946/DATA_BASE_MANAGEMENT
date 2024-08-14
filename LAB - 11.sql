create table STU_INFO
 (Rno int,
 Name varchar(50),
 Branch varchar(50)
 )

 create table RESULT 
 (rno int,
 spi decimal(8,2)
 )

 create table EMPLOYEE_MASTERR 
 (EmployeeNo varchar(50),
 Name varchar(50),
 ManagerNo varchar(50)
 )

 insert into STU_INFO values
 (101 ,'Raju' ,'CE' ),
 (102 ,'Amit', 'CE' ),
 (103 ,'Sanjay', 'ME' ),
 (104 ,'Neha' ,'EC' ),
 (105 ,'Meera' ,'EE' ),
 (106 ,'Mahesh' ,'ME' )
 
 insert into  RESULT  values
 (101 ,8.8 ),
 (102 ,9.2 ),
 (103 ,7.6 ),
 (104 ,8.2 ),
 (105 ,7.0 ),
 (106, 8.9 )

 UPDATE RESULT SET rno = 107
 WHERE rno = 106

 insert into EMPLOYEE_MASTERR  values
 ('E01','Tarun', NULL),
 ('E02' ,'Rohan', 'E02' ),
 ('E03' ,'Priya' ,'E01'),
 ('E04' ,'Milan', 'E03' ),
 ('E05' ,'Jay' ,'E01' ),
 ('E06' ,'Anjana', 'E04')

 SELECT *FROM STU_INFO
 SELECT *FROM RESULT
 SELECT *FROM EMPLOYEE_MASTERR

 --PART-A-----
 --1. Combine information from student and result table using cross join or Cartesian product.
 SELECT *FROM STU_INFO CROSS JOIN RESULT 

--2. Perform inner join on Student and Result tables.
SELECT STU_INFO.Rno,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.spi 
 FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 

--3. Perform the left outer join on Student and Result tables.
SELECT STU_INFO.Rno,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.spi 
 FROM STU_INFO LEFT OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 

--4. Perform the right outer join on Student and Result tables. 
SELECT STU_INFO.Rno,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.spi 
 FROM STU_INFO RIGHT OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 

--5. Perform the full outer join on Student and Result tables. 
SELECT STU_INFO.Rno,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.spi 
 FROM STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 

--6. Display Rno, Name, Branch and SPI of all students. 
SELECT STU_INFO.Rno,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.spi 
 FROM STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 

--7. Display Rno, Name, Branch and SPI of CE branch’s student only. 
SELECT STU_INFO.RNO,STU_INFO.Name,STU_INFO.Branch,RESULT.spi 
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
WHERE STU_INFO.Branch = 'CE'
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only. 
SELECT STU_INFO.RNO,STU_INFO.Name,STU_INFO.Branch,RESULT.spi 
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
WHERE STU_INFO.Branch <> 'EC'

--9. Display average result of each branch. 
SELECT STU_INFO.Branch , AVG(RESULT.SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
GROUP  BY  STU_INFO.Branch

--10. Display average result of CE and ME branch.
SELECT STU_INFO.Branch , AVG(RESULT.SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
WHERE STU_INFO.Branch IN ('CE','ME')
GROUP  BY  STU_INFO.Branch

--Part – B: 
--1. Display average result of each branch and sort them in ascending order by SPI. 
SELECT STU_INFO.Branch , AVG(RESULT.SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
GROUP  BY  STU_INFO.Branch
ORDER BY AVG(RESULT.SPI) ASC

--2. Display highest SPI from each branch and sort them in descending order. 
SELECT STU_INFO.Branch , MAX(RESULT.SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT ON STU_INFO.RNO = RESULT.RNO 
GROUP  BY  STU_INFO.Branch
ORDER BY MAX(RESULT.SPI) DESC

--Part – C: 

--1. Retrieve the names of employee along with their manager’s name 
--from the Employee table. 

SELECT E1.NAME AS Employee, e2.NAME AS Manager
FROM EMPLOYEE_MASTERR AS  E1 
LEFT OUTER JOIN EMPLOYEE_MASTERR AS e2 ON
 e1.ManagerNo = e2.EmployeeNo;












