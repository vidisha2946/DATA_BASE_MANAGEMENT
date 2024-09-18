select*
from DEPT
SELECT *
FROM PERSON

-----------------------Part  A--------------------

--1. Find all persons with their department name & code.
SELECT
    PERSON.PersonName AS PName,
    DEPT.DepartmentName AS DName,
    DEPT.DepartmentCode AS DCode
FROM PERSON
    INNER JOIN
    DEPT ON 
    PERSON.DepartmentID = DEPT.DepartmentID;

--2. Find the person's name whose department is in C-Block.


SELECT PERSON.PersonName , DEPT.Location
FROM PERSON JOIN DEPT ON 
  PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.LOCATION = 'C-BLOCK'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT
    PERSON.PersonName AS PName,
    DEPT.DepartmentName AS DName,
    PERSON.Salary AS PSALARY
FROM PERSON
    INNER JOIN DEPT ON 
     PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT
    PERSON.PersonName AS PName,
    DEPT.DepartmentName AS DName,
    PERSON.Salary AS PSALARY
FROM PERSON
    INNER JOIN DEPT ON 
     PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'RAJKOT'

--5. Retrieve persons name of the person who joined the Civil department after 1-Aug-2001.
SELECT
    PERSON.PersonName AS PName,
    DEPT.DepartmentName AS DName,
    PERSON.JoiningDate AS PJoinDate
FROM PERSON INNER JOIN DEPT ON
    PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'CIVIL' AND PERSON.JoiningDate > '1-Aug-2001'

--6. Find details of all persons who belong to the computer department.
SELECT PERSON.PersonName
FROM PERSON INNER JOIN DEPT ON 
    PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT PERSON.PersonName, DEPT.DepartmentName
FROM PERSON
    JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
--WHERE DATEDIFF(--CURRENT_DATE, PERSON.JoiningDate) > 365;


--8. Find department wise person counts.
SELECT DEPT.DepartmentName, COUNT(PERSON.PersonID) AS person
FROM PERSON
    JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentID;


--9. Give department wise maximum & minimum salary with department name.
SELECT DEPT.DepartmentName,
    MAX(PERSON.Salary),
    MIN(PERSON.Salary)
FROM PERSON
    JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentID;


--10. Find city wise total, average, maximum and minimum salary.
SELECT SUM(PERSON.Salary) AS TOTAL,
    AVG(PERSON.Salary) AS AVERAGE,
    MIN(PERSON.Salary) AS MIN,
    MAX(PERSON.Salary) AS MAX
FROM PERSON

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(PERSON.Salary) AS average
FROM PERSON
    JOIN DEPT ON  PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'Ahmedabad';

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column)
SELECT
    CONCAT(PERSONNAME , 'lives in ' , CITY , ' and works in ' , DEPARTMENTNAME , ' department')
FROM DEPT JOIN PERSON
    ON DEPT.DEPARTMENTID = PERSON.DEPARTMENTID


-------------------PART B------------------


--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column)
SELECT
    CONCAT(PERSONNAME , 'earns ' ,SALARY , ' from ' , DEPARTMENTNAME , ' department monthly')
FROM DEPT JOIN PERSON
    ON DEPT.DEPARTMENTID = PERSON.DEPARTMENTID

--2. Find city & department wise total, average & maximum salaries.
SELECT
    CITY , DEPARTMENTNAME , SUM(SALARY), AVG(SALARY) , MAX(SALARY)
FROM
    DEPT JOIN PERSON
    ON DEPT.DEPARTMENTID = PERSON.DEPARTMENTID
GROUP BY CITY , DEPARTMENTNAME

--3. Find all persons who do not belong to any department.
SELECT *
FROM
    DEPT FULL JOIN PERSON
    ON DEPT.DEPARTMENTID = PERSON.DEPARTMENTID
WHERE PERSON.DEPARTMENTID IS NULL

--4. Find all departments whose total salary is exceeding 100000
SELECT
    DEPARTMENTNAME , SALARY
FROM
    DEPT JOIN PERSON
    ON DEPT.DEPARTMENTID = PERSON.DEPARTMENTID
WHERE SALARY > 10000