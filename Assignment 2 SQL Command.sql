use Assignment

Select name
from sys.databases

-- Select Statement Practice 
-- 1.Execute a literal select statement that returns your name.
Select 'vraj ' + ' ' + ' nakum '

-- 2. Write the literal select statement that evaluates the product of 7 and 4.
Select 7+4
Select 7-4
Select 7/4
Select 7*4

--3. Write the literal select statement that takes the difference of 7 and 4 then multiplies
--that difference by 8.
Select (7-4 ) *8 
 
-- 4 Write a literal select statement that returns the phrase “Brewster’s SQL Training
--Class”. (Hint: note the single apostrophe in the string).
Select 'Brewster' + 's SQL Traning class' 

-- 5 Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one
--column and the result of 5*3 in another column.
Create table phase 
( phaseword Varchar (20),
 cal float (5))

 Select *
 from sys.tables

 Insert into phase values
 ('Day 1 of Traning' , 5 * 3 )

 Select * from phase


 -- Insert / Update / Delete
 --1. Insert a new employee record with all details provided directly.
 Create table emp
 ( Eid int , Ename Varchar (20) , Eage int  , Edepartment Varchar (50), ESalary Money )
 
 Select * from emp
 
 Insert into emp values 
 ( 101 ,'Vraj', 18 ,'Clould Department ', 56000 )

 Insert into emp values
 (102 , 'Payal' , 19 , 'Data Analysis' , 57000),
 (103 , 'Vanita', 20 , 'Clould Department', 58000),
 (104 , 'Mansukhalal',21,'operation analysis' , 59000)

 --2. Add multiple new team members to the HR department at once.

 Insert into emp Values
 (105 , 'Ramesh', 22 , 'HR Department' , 56000),
 (106 , 'Jayesh' , 23, 'HR Department' , Null)
 
 
 Select * from emp

 --3 Register an employee who hasn't been assigned a salary yet.
 Insert into emp Values
 (107 , 'Raj' , 24 ,'AI Department' , Null)


 --4 Update the salary to 85,000 for everyone working in the 'Cloud' department.
 Update emp
 Set ESalary = 86000
 Where Edepartment = 'Clould Department'

 Select * from emp

-- Delete from emp
-- Where Edepartment = ' Clould Department' 

--5 Change both the department and salary for a specific employee by name.
Update emp
set Edepartment = 'Date Entry' , ESalary = 18000
where Ename = 'Jayesh'

Select * From emp

--6 Give a flat 10% appraisal boost to employee working in AI department.

Update emp
set ESalary = ESalary*1.10
Where Edepartment = 'AI Department'


--7 Assign an initial entry-level salary of 30,000 to anyone whose salary column is
--completely blank (NULL).
Update emp
set ESalary = 30000
Where  ESalary is Null

Select * from emp

--8 Remove a specific employee from the system using their unique ID.
Select Name
From sys.tables

Delete emp where Eid = 101


Select * from emp

--9  Remove all records belonging to a department that has been completely shut down. 
Delete emp where Edepartment= 'operation analysis'

Select * from emp

--10 Drop records of any employee earning less than 20,000 in the Finance division.
Delete emp where ESalary <= 20000 

Select * from emp


--- Assignment 2 
--11. employee id as int to Varchar while varchar to int


SP_help emp

Alter table emp 
Alter column Eid Varchar (10)

Alter table emp 
Alter column Eid int

Select * from emp

Drop table emp


--Assignment 2

Create table emp (
EID  int Identity (1,1) , 
EName  Varchar (20) , 
Edepartment Varchar (30) , 
ESalary  int , 
Ebouns  int , 
EExperience int  , 
Ecity Varchar (50) )

Select * from emp 

Insert into emp values 
( 'Vraj', 'Cloud',70500,8000,5,'Mumbai')

Insert into emp values 
( 'Payal', 'AI',56500,8000,1,'Delhi'),
( 'Vanita', 'data Eng.',89000,8000,2,'Pune'),
( 'Mansukhlal', 'Gen AI',84500,8000,3,'Tarsai'),
( 'Ramesh', 'HR',70000,8000,4,'Surat'),
( 'Jayesh', 'HR',70000,8000,5,'Mumbai'),
( 'Naresh', 'Account',72800,8000,6,'Goa'),
( 'Nitin', 'Admin',89400,8000,7,'Jmanagar'),
( 'raja', 'Coder',52500,8000,8,'Delhi')

Select * from emp

Update emp
Set Ecity = 'Jamnagar'
Where Eid = 8

Set identity_insert emp ON

--1. Write a query to display all employees whose salary is greater than 50,000.

Select * from emp
Where ESalary >= 50000 

--2. Retrieve employees who work in the IT department and have more than 5 years of
--experience.

Select * from emp
where EExperience > 5

--3. Write a query to display employees whose salary is between 45,000 and 60,000.

Select * from emp
where ESalary between 45000 and 60000 

--4. Display employees whose city is either Mumbai or Delhi.

Select * from emp
Where Ecity  = 'Mumbai' or Ecity =  'Delhi' 

--5.Write a query to display employee name along with their annual income

Select Ename , ESalary*12  from emp
--or
Select Ename , ESalary from emp

Select * from emp

--6. Find employees whose name starts with the letter 'A'.
Select * from emp
Where Ename like 'a%'

Insert into emp (EID , EName , Edepartment, ESalary, Ebouns ,EExperience,Ecity ) 
values (11, 'Anisha' , 'AI' , 46000 , 8000, 4 , 'Pune') 

--7.Find the highest salary among all employees.

Select max (ESalary) from emp

-- 8.Find the total bonus paid to employees in the IT department(AI).

Select Sum(Ebouns) from emp
Where Edepartment ='AI'

--9.Display the minimum and maximum experience of employees.


Select max(Eexperience) from emp
Select min(Eexperience) from emp

--10.Count the number of employees in each department.

Select Count(Edepartment) from emp

Select Count (Ename)  from emp

Select Edepartment  ,   Ename from emp

Select Edepartment, Count (EName)
from emp
Group by Edepartment

having count(EID) <= 1 

order by 2


Select * from emp


-- 11. same as 8

-- 12. Write an SQL statement to add a new column named Email of type VARCHAR(100)
-- to the Employees table.

Alter table emp
add  Emailid varchar (100)

Select * from emp

--13.Write an SQL statement to modify the Salary column so that it becomes
-- DECIMAL(10,2).

Alter table emp
alter column Esalary Decimal(10,2)

Sp_help emp

--14. Write an SQL statement to drop the Bonus column from the Employees table.

Alter table emp 
drop column Ebouns 