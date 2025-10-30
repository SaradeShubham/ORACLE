Use Shubham_SQL_Practice
Create Table Employee
(
   EmployeeID int,
   EmployeeFirstName varchar(100),
   EmployeeLastName varchar(100),
   Salary int,
   Address varchar(500)
   )
   Go

   Create Schema Food
   Go
   Create Schema Clothing
   Go
   Create Schema Electronics
   Go

   Create Table Food.Employee
    (
   EmployeeID int,
   EmployeeFirstName varchar(100),
   EmployeeLastName varchar(100),
   Salary int,
   Address varchar(500)
   )
    Create Table Clothing.Employee
    (
   EmployeeID int,
   EmployeeFirstName varchar(100),
   EmployeeLastName varchar(100),
   Salary int,
   Address varchar(500)
   )
   Create Table Electronics.Employee
    (
   EmployeeID int,
   EmployeeFirstName varchar(100),
   EmployeeLastName varchar(100),
   Salary int,
   Address varchar(500)
   )
 -- Values Method
 Insert Into Employee
 (  
   EmployeeID,
   EmployeeFirstName ,
   EmployeeLastName ,
   Salary ,
   Address 
   )
   Values (1, 'Dinesh', 'Kumar', 1000 ,'India'),
   (2, 'John', 'Smith', 2000, 'US'),            
   (3, 'Santosh', 'Kumar' ,3000, 'India'),      
   (4, 'Steve', 'Smith', 5000,'Aus')            
   Select * From Employee                       
   -- Select Method 
   Insert Into Employee
    (  
   EmployeeID,
   EmployeeFirstName ,
   EmployeeLastName ,
   Salary ,
   Address 
   )
   Select 5,'Kumar','Sanu',2750,'India'Union All
   Select 6,'Ravi','Singh',3000,'India'Union All
   Select 7,'John','Cena',2750,'US'    Union All
   Select 8,'John','Wright',2750,'US'
Select * From Employee
--NotNull Constraint

Create Table NotNullTest
(
	Id int NOT NULL -- Mandatory
	, Name varchar(100) -- Optional
)
Insert Into NotNullTest(ID,Name)
Select 1, 'Dinesh'
Insert Into NotNullTest(ID,Name)
Select Null,'John'
Insert Into NotNullTest(ID,Name)
Select 3,Null
Insert Into NotNullTest(ID)
Select 4
SELECT * FROM NotNULLTest
--Unique Constraint
Create Table UniqueTest
(ID int Unique,
Name varchar(15))
Insert into UniqueTest(ID,Name)
Select 1,'Dinesh'
Insert into UniqueTest(ID,Name)
Select 2,'John'
Insert into UniqueTest(ID,Name)
Select Null,'John'
SELECT * FROM UniqueTest
--- Primary Key
Create Table PrimaryKeyTest
(Id int Primary Key, 
Name varchar(100) )
Insert Into PrimaryKeyTest(Id,Name)
Select 1,'Dinesh'
Insert Into PrimaryKeyTest(Id,Name)
Select 2,'John'
Select * from PrimaryKeyTest
--- Foreign Key
Create Table ForeignKeyTest
( Id int Foreign Key references PrimaryKeyTest(Id),
DOB Date)
Insert Into ForeignKeyTest(Id,DOB)
Select 1,'1994-09-21'

Select* From ForeignKeyTest

Insert Into ForeignKeyTest(Id,DOB)
Select Null,'1994-09-21'

Insert Into ForeignKeyTest(Id,DOB)
Select 2,'1994-01-06'
Select * from PrimaryKeyTest

Select * from ForeignKeyTest

---Check Constraint
Create Table CheckTest1
( Id int,
Salary int Check (salary > 0) )
Insert Into CheckTest1 (Id,Salary)
Select 1, 1000

Insert Into CheckTest1 (Id,Salary)
Select 2, 4000

Select * from CheckTest1

Create Table CheckTest2
( ID int,
Name Varchar(20),
VaccinationStatus varchar(10) Check( VaccinationStatus In ('yes','no') ) )

Insert Into CheckTest2 (Id,Name,VaccinationStatus)
Select 1,'Rama','Yes'

Insert Into CheckTest2 (Id,Name,VaccinationStatus)
Select 2,'vynka','Yes'

Insert Into CheckTest2 (Id,Name,VaccinationStatus)
Select 3,'Komal','No'

Insert Into CheckTest2 (Id,Name,VaccinationStatus)
Select 4,'sankee','N'

Select * from Checktest2
--- Default 

CREATE TABLE DefaultTest
(
	Id int
	, Name varchar(100) DEFAULT('Lvdya Nav Kut Gandit Ghatlas Kay')
)

INSERT INTO DefaultTest(Id,Name)
SELECT 1,'Vishal'

INSERT INTO DefaultTest(Id,Name)
SELECT 2,NULL

INSERT INTO DefaultTest(Id)
SELECT 3

SELECT * FROM DefaultTest

--- Identity Constraint

CREATE TABLE IdentityTest
(	
	ID int IDENTITY(1,1)-- (Seed, Increment)
	, Name varchar(20)
)

INSERT INTO IdentityTest(Name)
SELECT 'Vaibhav' UNION
SELECT 'Vishal'


SELECT * FROM IdentityTest

SET IDENTITY_INSERT IdentityTest ON
GO

INSERT INTO IdentityTest(Id,name)
SELECT 15,'Gani Bhai'

SET IDENTITY_INSERT IdentityTest OFF
GO

SELECT * FROM IdentityTest

CREATE TABLE IdentityTest3
(	
	ID int IDENTITY(1,5) ----- (Seed(start Fron), Increment(step up))
	, Name varchar(100)
)

INSERT INTO IdentityTest3(Name)
SELECT 'Dines' UNION ALL
SELECT 'John' UNION ALL
SELECT 'Smith'

SELECT * FROM IdentityTest3

SELECT * FROM Employee As emp

--- To handle column And Row Data

Select salary,EmployeeID,Address AS KutRahatoBeTu
From Employee As Emp

Select* From Employee As emp
Where EmployeeID = 5

Select* From Employee As emp
Where EmployeeID In (1,3,5,8)

Select* From Employee As emp
Where EmployeeID >4

Select* From Employee As emp
Where EmployeeID Between 4 And 7

Select* From Employee As emp
Where EmployeeID !=4

Select* From Employee As emp
Where EmployeeID >=5 and Address='india'

Select* From Employee As emp
Where Not EmployeeID In( 1,3,7)

--Distinct

Select Distinct Address,EmployeeFirstName
From Employee As emp

---TOP

Select top 3 *
From Employee as emp
Where Address = 'india'

--LIKE OPERATOR

-- LIKE operator
	-- Helps us in identifying patterns in the text values
	-- % refers to 0 to n number of alpha numeric characters
	-- _ refers to only one alpha numeric character
SELECT *
FROM Employee
--WHERE EmployeeFirstName LIKE '%h' -- Filters out all the records which ends with h
--WHERE EmployeeFirstName LIKE 'd%' -- Filters out all the records which begins with d
--WHERE EmployeeFirstName LIKE '%o%' -- Filter out all records which contains o in it
WHERE EmployeeFirstName LIKE '%s_'
--WHERE EmployeeFirstName LIKE '__h%'

---JOIN---
--Inner Join
--Outer Join
--Cross Join
Create Table EmployeeDOB
( EmployeeID int,
 EmployeeDOB Date)

 Insert Into EmployeeDOB (EmployeeID,EmployeeDOB)
 Select 1,Getdate()-7000 Union All
 Select 2,Getdate()-7300 Union All
 Select 5,Getdate()-7900 Union All
 Select 6,Getdate()-8000 Union All
 Select 7,Getdate()-7800 Union All
 Select 8,Getdate()-7600 Union All
 Select 9,Getdate()-6000 Union All
 Select 10,Getdate()-120 Union All
 Select 11,Getdate()-15000

 Select * From EmployeeDOB

 Select* From Employee
--Inner Join
----For All DATA
 Select * From Employee As emp
 Inner Join EmployeeDOB AS edob ON emp.EmployeeId=edob.EmployeeID

 ---For avoiding Duplicate column or what we want
 Select emp.*,edob.EmployeeDOB
 From Employee As emp
 Inner Join EmployeeDOB AS edob On emp.EmployeeId=edob.EmployeeID

 --Left Join
  Select * From Employee As emp
 Left Join EmployeeDOB AS edob ON emp.EmployeeId=edob.EmployeeID

 Select emp.*,edob.EmployeeDOB
 From Employee As emp
 Left Join EmployeeDOB AS edob On emp.EmployeeId=edob.EmployeeID

 --to find what we want.. eg to find only null values in table

 Select emp.*,edob.EmployeeDOB
 From Employee As emp
 Left Join EmployeeDOB AS edob On emp.EmployeeId=edob.EmployeeID
 Where edob.EmployeeID Is Null

 ---Full Join(Outer/Inner)
   Select * From Employee As emp
 Full Outer Join EmployeeDOB AS edob ON emp.EmployeeId=edob.EmployeeID

 ---Cross Join
 CREATE TABLE Months(MonthNm varchar(10)) 

INSERT INTO Months(MonthNm)
SELECT 'Jan' UNION ALL
SELECT 'Feb' UNION ALL
SELECT 'Mar' UNION ALL
SELECT 'Apr' UNION ALL
SELECT 'May' UNION ALL
SELECT 'Jun' UNION ALL
SELECT 'Jul' UNION ALL
SELECT 'Aug' UNION ALL
SELECT 'Sep' UNION ALL
SELECT 'Oct' UNION ALL
SELECT 'Nov' UNION ALL
SELECT 'Dec' 

Select EmployeeFirstName,EmployeeLastName,MonthNm
From Employee As emp
Cross Join Months As m

-- Update and DELETE
	-- Take the backup of the rows before your update or DELETE them
	-- Always start your UPDATE and DELETE query with a SELECT
	-- Never EVER EVER EVERRRRR forget your WHERE clause	

-- Take a backup of the rows before you perform any DML operation(UPDATE and DELETE)

Select*
Into Employee_backup
From Employee

Select* From Employee_backup

Drop table Employee_backup

---- For Only For Specific Column


Select*
Into Employee_backup1
From Employee
Where EmployeeId In(1,3,4,6,8)

Select* From Employee_backup1
 ---For Delete Backup
Drop table Employee_backup1

--== Update
UPDATE emp
SET EmployeeFirstName = 'DineshNew'
--SELECT *
FROM Employee AS emp
WHERE EmployeeId = 1

-- Revert Back your change using the backup table
UPDATE emp
SET EmployeeFirstName = bak.EmployeeFirstName
--SELECT emp.EmployeeID, emp.EmployeeFirstName AS NewBadName, bak.EmployeeFirstName AS Original
FROM Employee AS emp
INNER JOIN Employee_Backup AS bak ON bak.EmployeeID = emp.EmployeeID

-- DELETE
DELETE emp
--SELECT *
FROM Employee AS emp
WHERE EmployeeID = 8

-- Revert Back your change using the backup table
INSERT INTO Employee
(
	EmployeeId
	, EmployeeFirstName
	, EmployeeLastName
	, Salary
	, Address
)
SELECT EmployeeID
	, EmployeeFirstName
	, EmployeeLastName
	, Salary
	, Address
FROM Employee_Backup
--WHERE EmployeeID = 8

-- ALTER a table
	-- Add a column
	-- Remove a column
	-- Alter a column

-- Add a column
Create Table Defaulttest2
(ID int,Name Varchar(50))

Insert Into Defaulttest2(ID,Name)
select 1,'Dinesh'Union All
Select 2,'John'	 Union All
Select 3, 'Smith'
 
 Select* From Defaulttest2

 ----add not null colum
 Alter Table Defaultest2
 Add Salart int Not Null Default(0)

 Select* From Defaulttest2
 -- Add a null column
 Alter Table Defaulttest2
 Add Address varchar(50)

 Select* From Defaulttest2

 ---Drop Column
 -- For columns which do not have a constraint, you can directly drop the column
	-- For column with constraints, you need to drop the constraint first and then the column
	-- Exceptions - (NOT NULL, IDENTITY)
	Alter Table Defaulttest2
	Drop Column Address

	 Select* From Defaulttest2

	 sp_help Defaulttest2
	 --- to find constraint name to drop a column with constraint
	 ---- we could not drop column direct we have to drop constraint first
	 ---- then column which we have to drop

	 Alter Table Defaulttest2
	 Drop Constraint DF__Defaultte__Salar__76969D2E

	 ----After Drop Constraint then Only we Can Drop That column

	 Alter TAble Defaulttest2
	 Drop Column Salart

	 Select* From Defaulttest2

	 -- Alter a column
	-- Make sure that the data in the column clearly obeys the constraint or key rules that 
	-- you apply
Alter Table UniqueTest
Alter Column Name varchar(120) NOT NULL

SELECT * FROM UniqueTest

ALTER TABLE NotNullTest
ALTER COLUMN Name varchar(120) NOT NULL

SELECT * FROM UniqueTest
SELECT * FROM NotNullTest

DELETE FROM NotNullTest
WHERE Name IS NULL

-- Replacement of Alt+F1
sp_help Employee


--== Temporary tables
	-- Temporary tables are temp storage units to store and transform data from the source before 
		-- it is moved to the destination/displayed on the application
	-- The temp tables are created in the tempdb
	-- Advantages : 
		-- The source and destination table have complete availability
		-- Specific to the creator
	-- Types of Temp Tables : 
		-- Local Temp Table
		-- Global Temp Table

-- Local Temp Table
	-- The local temp table is identified by a single # before the name of the table
	-- You can create indexes, keys, constraints exactly like a physical table in the DB
	-- The scope of a local temp table is only in the session/query window where it is created
	-- We can create n number of local temp tables with the same name in different sessions
	-- We can either manually drop the local temp table 
		-- or it gets dropped automatically once the session is closed

		Create Table #LocalTempTable
		(ID int,
		Name varchar(50))

       Insert Into #LocalTempTable (ID,Name)
	   Select 1,'Dinesh' Union All
Select 2,'John' Union All
Select 3,'Steve' 

Select* From #LocalTempTable

Select * From #LocalTempTable AS X
Inner Join Employee As emp On emp.EmployeeID=X.ID

Drop Table #LocalTempTable

----Global Temp. Table
-- The global temp table is identified by double ## before the name of the table
	-- You can create indexes, keys, constrints exactly like a physical table in the DB
	-- The scope of a global temp table is across all the sessions and for all users who 
		--have access to the database
	-- We can either manually drop the global temp table from any session
		-- or it gets dropped automatically once the parent session is closed

	Create Table ##GlobalTempTable
		(ID int,
		Name varchar(50))

       Insert Into ##GlobalTempTable (ID,Name)
	   Select 1,'Dinesh' Union All
Select 2,'John' Union All
Select 3,'Steve' 

Select* From ##GlobalTempTable

Drop Table ##GlobalTempTable

------- Copying the data from Source to the temp table

Select *
Into #EmployeeData
From Employee

Select * From #EmployeeData As x

Drop Table #EmployeeData

-- Table Variable
	-- Scope of a variable is only inside the query/batch where it is created/initialized
	-- Batch is a single or multiple line of SQL Statements that are run together
Declare @id int--, @Name varchar(100) --= 5 -- Integer variable
Set @id = 5
Select @id AS Id
Declare @name varchar(100) = 'Dinesh' -- Varchar variable
Select @name AS Name

Declare @tableVariable TABLE -- Table Variable
(
	id int
	, Name varchar(100)
)
Insert Into @tableVariable(id,name)
Select 1,'Dinesh' Union ALL
Select 2,'John' Union ALL
Select 3,'Steve'

Select * From @tableVariable As t

/*
--== Functions
	-- It is a database object which has a set of SQL Statements that accepts input 
		-- parameters and returns the result
	-- At a given point in time, function will definitely return something
	-- It can be a scalar value or a table valued
	-- We cannot use a function to Insert, Update or Delete records from physical
		-- tables in the database

Advantages : 
	1. Reusuability aspect - We are able to reuse the encapsulated logic whereever required
	2. Maintainability - We no longer have to maintain the same piece of code at different places

Types of Functions
1. System Defined Functions : 
	a. Scalar Functions
	b. Aggregate Functions
2. User Defined Functions(UDF) : 
	a. Scalar Functions
	b. Table-Valued Functions
		i. Inline table-Valued function
		ii. Multiline table-valued function
*/
--== 1. System Defined Functions
--==	a. Scalar Functions
	-- These functions operate on none, one or more input values and returns a scalar output value
--== DateTime Functions
	-- The date time functions are really helpful when you want to build date range metrics

	Select Getdate()
	Select Getutcdate()

	Select DateAdd(Hour,3,Getdate()-1)

	Select Dateadd(Hour,4,dateadd(minute ,24,Getdate()-5))

	--== DateTime Functions
	-- The date time functions are really helpful when you want to build date range metrics
SELECT GETDATE() -- This function returns the current server date time
SELECT GETUTCDATE() -- This gets us the UTC date and time(Universal Time Coordinated/Greenwich Mean Time)
SELECT GETDATE() + 2 -- This will add 2 days to my current date
SELECT GETDATE() - 2 -- This will subtract 2 days from my current date
SELECT DATEADD(hour,2,GETDATE()) -- This will add 2 hours to now
SELECT DATEADD(hour,-2,GETDATE()) -- This will deduct 2 hours from the current date time
SELECT DATEADD(year,2,GETDATE()) -- This adds 2 years to the current date time
SELECT DATEADD(year,-2,GETDATE()) -- This will deduct 2 years from the current date time
SELECT DATEADD(month,2,GETDATE()) -- This adds 2 months to the current date time
SELECT DATEADD(month,2,DATEADD(hour,3,GETDATE())) -- This adds 3 hours and 2 months to the current date
SELECT YEAR(GETDATE()) -- Returns the year of the specified date
SELECT MONTH(GETDATE()) -- Returns the month of the specified date
SELECT DATEPART(day,GETDATE()) -- Returns the date part of the current datetime
SELECT DATEPART(hour,GETDATE()) -- Returns the hour part of current datetime
SELECT DATEPART(minute,GETDATE())
SELECT DATEPART(year,GETDATE())
SELECT DATEPART(month,GETDATE())
SELECT DATEDIFF(day,'2022-09-01','2022-09-07') -- Returns the difference in days between the start and end date
SELECT DATEDIFF(hour,'2022-09-01','2022-09-07')
SELECT DATEDIFF(minute,'2022-09-01 20:00','2022-09-01 23:00')
SELECT DATENAME(MONTH,GETDATE())
SELECT DATENAME(WEEKDAY, GETDATE())

--Link to convert datetime to multiple different formats
--https://www.mssqltips.com/sqlservertip/1145/date-and-time-conversions-using-sql-server/


-- Usage of DateDiff
Select*
	, Year(dob.EmployeeDOB) As YearOfBirth
	, Datediff(Year,dob.EmployeeDOB,Getdate()) As AgeInYears
From Employee As emp
Inner Join EmployeeDOB As dob On dob.EmployeeID = emp.EmployeeID

-- Filtering by year
Select *
From EmployeeDOB
Where Year(EmployeeDOB) >= 2000

-- Fetch the Sales from last 2 days
Select *
From Sales
Where SalesDate >= Getdate() - 2

-- To get sales previous year and First quarter

Select *
From AdventureWorks2019.Sales.SalesOrderHeader
Where Year(OrderDate) = Year(Getdate())-1
And Month(OrderDate) In (1,2,3)

-- People born between March and September
Select * --,YEAR(EmployeeDOB) AS YearDOB,MONTH(EmployeeDOB) AS MonthDOB
From EmployeeDOB
Where Month (EmployeeDOB) Between 3 And 9

-- To identify all employees who have DOB in the current month
Select *--,YEAR(EmployeeDOB) AS YearDOB
From EmployeeDOB
Where Month (EmployeeDOB) = Month(Getdate())


