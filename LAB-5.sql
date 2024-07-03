USE CSE_3B_361
CREATE TABLE STUDENT(
	STUID INT,
	FIRSTNAME VARCHAR(25),
	LASTNAME VARCHAR(25),
	WEBSITE VARCHAR(50),
	CITY VARCHAR(25),
	ADDRESS VARCHAR(100)
);
INSERT INTO STUDENT VALUES(1011,'KEYUR','PATEL','Techonthenet.com ','RAJKOT','-303 ''Vasant Kunj'', Rajkot'),
(1022,'Hardik ','Shah','digminecraft.com','Ahmedabad','"Ram Krupa", Raiya Road'),
(1033,'Kajal ','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044, 'Bhoomi','Gajera ','checkyourmath.com ','Ahmedabad','"Jig�s Home�, Narol'),
(1055,'Harmit','Mitel','@me.darshan.com ','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')
SELECT *FROM STUDENT

------PART-A-------

SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE 'K%'

SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE '_____'

SELECT FIRSTNAME,LASTNAME
FROM STUDENT
WHERE CITY LIKE '%a'
AND CITY LIKE '______'

SELECT DISTINCT LASTNAME
FROM STUDENT
WHERE LASTNAME LIKE '%tel'

SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE 'ha%'
AND FIRSTNAME LIKE '%t'

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'k%_y%'

SELECT WEBSITE
FROM STUDENT
WHERE WEBSITE NOT LIKE '_____'

SELECT LASTNAME
FROM STUDENT
WHERE LASTNAME LIKE '%JER%'

SELECT CITY
FROM STUDENT
WHERE CITY LIKE '[r,B]%'

SELECT FIRSTNAME 
FROM STUDENT 
WHERE WEBSITE LIKE '%'

SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE '[A-H]%'

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%'

SELECT FIRSTNAME 
FROM STUDENT
WHERE WEBSITE NOT LIKE '_____'
AND FIRSTNAME LIKE '_____'

SELECT LASTNAME 
FROM STUDENT
WHERE LASTNAME LIKE 'PAT%'

SELECT FIRSTNAME
FROM STUDENT
WHERE CITY NOT LIKE 'B%'

------PART-B--------

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'A%'
OR FIRSTNAME LIKE 'H%'

SELECT FIRSTNAME 
FROM STUDENT 
WHERE FIRSTNAME LIKE 'H%[A,E,I,O,U]%'

SELECT FIRSTNAME
FROM STUDENT
WHERE LASTNAME NOT LIKE '%A' 

SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME NOT LIKE '[A,E,I,O,U]%'

SELECT WEBSITE
FROM STUDENT
WHERE WEBSITE LIKE '%.NET'

------PART-C----

SELECT ADDRESS
FROM STUDENT
WHERE ADDRESS LIKE '%-%'

SELECT ADDRESS
FROM STUDENT
WHERE ADDRESS LIKE '%''%'
OR ADDRESS LIKE '%"%'




	