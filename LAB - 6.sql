--Mathematics Functions--

--1. Display the result of 5 multiply by 30.--
Select 5*30

--2. Find out the absolute value of -25, 25, -50 and 50.
Select ABS(-25),ABS(25),ABS(-50),ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
Select CEILING(25.2), CEILING(25.7), CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
Select FLOOR(25.2),FLOOR(25.7), FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
Select 5%2, 5%3

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
Select POWER(3,2), POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
Select SQRT(25), SQRT(30), SQRT(50)

--8. Find out the square of 5, 15, and 25.
Select SQUARE(5), SQUARE(15), SQUARE(25)

--9. Find out the value of PI.
Select PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
Select ROUND(157.732,2), ROUND(157.732,0),ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3.
Select EXP(2), EXP(3)

--12. Find out logarithm having base b having value 10 of 5 and 100.
Select LOG10(5), LOG10(100)

--13. Find sine, cosine and tangent of 3.1415.
Select SIN(3.1415), COS(3.1415), TAN(3.1415)

--14. Find sign of -25, 0 and 25.
Select SIGN(-25), SIGN(0), SIGN(25)

--15. Generate random number using function.
Select RAND()


--String Functions


--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
Select LEN(null), LEN('hello'), LEN('')

--2. Display your name In lower & upper case.
Select LOWER('DARSHAN UNIVERSITY'), UPPER('Darshan Univeristy')

--3. Display first three characters of your name.
Select SUBSTRING('Darshan University',1,3)

--4. Display 3rd to 10th character of your name.
Select SUBSTRING('Darshan University',3,8)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
Select REPLACE('abc123efg',123,'XYZ'), REPLACE('abcabcabc','c',5)

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
Select ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII(0), ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
Select Char(97),CHAR(65), CHAR(122), CHAR(90), CHAR(48), char(57)

--8. Write a query to remove spaces from left of a given string ‘ hello world ‘.
Select LTRIM(' HELLo World ') 

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
Select RTRIM(' hello world ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
Select LEFT ('sql server',4), RIGHT ('sql server',7)

--11. Write a query to convert a string ‘1234.56’ to number (Use CAST()).
Select CAST ('1234.56' as float) as 'Cast'

--12. Write a query to convert a float 10.58 to integer (Use CONVERT()).
Select CONVERT (int, 10.58)

--13. Put 10 spaces before your name using function.
select SPACE (10) + 'Darshan University'

--14. Combine two strings (Your name & Surname) using + sign as well as CONCAT ().
 Select ('Darshan' + 'University')
Select CONCAT('Darshan', 'Univeristy') 

--15. Find reverse of “Darshan”.
Select REVERSE ('Darshan') 

--16. Repeat your name 3 times.
Select REPLICATE ('Darshan',3)

--17. Delete 3 characters from a string, starting in position 1, and then insert "HTML" in position 1. (Use STUFF())
Select STUFF ('SQL Tutorial',1,3,'HTML')

--18. From Data, returns the first non-null value in a list. (Use COALESCE())
Select COALESCE (null, null, 'HTML', 'SQL ', null, 'CSS')

--19. Tests whether the expression is numeric. (Use ISNUMERIC())
Select ISNUMERIC ('12.5')

--20. Search for "t" in string "Customer", and return its position. (Use CHARINDEX())
Select CHARINDEX('t','Customer')


--Date Functions


--1. Write a query to display the current date & time. Label the column Today_Date.
Select GETDATE()

--2. Write a query to find new date after 365 day with reference to today.
Select GETDATE() + 365

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
Select CONVERT(VARCHAR, GETDATE())

--4. Display the current date in a format that appears as 03 Jan 1995.
Select CONVERT(VARCHAR, GETDATE(),106)

--5. Display the current date in a format that appears as Jan 04, 96.
Select CONVERT(VARCHAR(20), GETDATE(),7)

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
Select DATEDIFF(MONTH,'2008-12-31','2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
Select DATEDIFF(YEAR, '2012/01/25','2010/09/14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
Select DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
Select DAY('2016/05/12'), MONTH('2016/05/12'), YEAR('2016/05/12')

--10. Write a query that adds 5 years to current date.
Select DATEADD(YEAR, 5, GETDATE())

--11. Write a query to subtract 2 months from current date.
Select DATEADD(month, -2, GETDATE())

--12. Extract month from current date using datename () and datepart () function.
Select DATENAME(MONTH,GETDATE())
Select DATEPART(MONTH, GETDATE())

--13. Write a query to find out last date of current month.
Select EOMONTH(GETDATE())

--14. Write a query to display date & time after 30 days from today.
Select DATEADD(DAY, 30, GETDATE())