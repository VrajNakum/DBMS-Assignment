use Assignment

Select name
from sys.databases

-- Select Statement Practice 
-- 1.
Select 'vraj ' + ' ' + ' nakum '

-- 2. 
Select 7+4
Select 7-4
Select 7/4
Select 7*4

--3. 
Select (7-4 ) *8 
 
-- 4 
Select 'Brewster' + 's SQL Traning class' 

-- 5
Create table phase 
( phaseword Varchar (20),
 cal float (5))

 Select *
 from sys.tables

 Insert into phase values
 ('Day 1 of Traning' , 5 * 3 )

 Select * from phase


 -- Insert / Update / Delete
 --1. 
 Create table emp
 ( Eid int , Ename Varchar (20) , Eage int  , Edepartment Varchar (50), ESalary Money )
 
 Select * from emp
 
 Insert into emp values 
 ( 101 ,'Vraj', 18 ,'Clould Department ', 56000 )

 Insert into emp values
 (102 , 'Payal' , 19 , 'Data Analysis' , 57000),
 (103 , 'Vanita', 20 , 'Clould Department', 58000),
 (104 , 'Mansukhalal',21,'operation analysis' , 59000)

 --2.

 Insert into emp Values
 (105 , 'Ramesh', 22 , 'HR Department' , 56000),
 (106 , 'Jayesh' , 23, 'HR Department' , Null)
 
 
 Select * from emp

 --3
 Insert into emp Values
 (107 , 'Raj' , 24 ,'AI Department' , Null)


 --4 
 Update emp
 Set ESalary = 86000
 Where Edepartment = 'Clould Department'

 Select * from emp

-- Delete from emp
-- Where Edepartment = ' Clould Department' 

--5
Update emp
set Edepartment = 'Date Entry' , ESalary = 18000
where Ename = 'Jayesh'

Select * From emp

--6


--7
Update emp
set ESalary = 30000
Where  ESalary is Null

Select * from emp

--8
Select Name
From sys.tables