-- SELECT * from hr.employees
-- * is udes for fetch all DATA IN TABLE

-- for fetch specific column 
-- select employee_id, first_name from hr.employees

-- make a dummy table to first make sure what we do is ok ornot
-- select * from dual its a dummy table

-- SQl is not case sensitive

-- deffernt data types = int float(numbers), character, character+number(varchar),Date

-- select first_name, last_name,first_name | | last_name from hr.EMPLOYEES
-- here we use ||(pipe operator) for merge to column

-- OPRERATORS
-- ## WHERE OPERATOR
-- by using where operator we can filtering speific data
-- SELECT first_name from hr.EMPLOYEES where FIRST_NAME= 'Ellen'

-- ## Having and Groupby

-- Describe command where we get all columnand also what data type of column and also give its contains null values or not
-- desc hr.EMPLOYEES

-- select * from hr.EMPLOYEES where salary>15000

-- select * from hr.EMPLOYEES where DEPARTMENT_ID= 10
--  select * from hr.EMPLOYEES where DEPARTMENT_ID= 11
-- select DEPARTMENT_ID from hr.EMPLOYEES

-- desc hr.EMPLOYEES

-- select job_id from hr.EMPLOYEES

-- select * from hr.EMPLOYEES where JOB_ID='HR_REP'

-- select * from hr.EMPLOYEES where FIRST_NAME is null
-- select * from hr.EMPLOYEES where COMMISSION_PCT is null
--  IS NULL  used for find out nul values


-- select first_name from hr.EMPLOYEES
-- select * from hr.EMPLOYEES where FIRST_NAME like 'J%'
-- for startswith
--  select * from hr.EMPLOYEES where FIRST_NAME like '%J'
--  For ends with

-- ### Groupby

-- select DEPARTMENT_ID, avg(salary) from hr.EMPLOYEES Group by DEPARTMENT_ID

-- select DEPARTMENT_ID,COUNT(*) from hr.EMPLOYEES group by DEPARTMENT_ID

-- select DEPARTMENT_ID, MAX(salary) from hr.EMPLOYEES group by DEPARTMENT_ID

-- select DEPARTMENT_ID, MAX(salary) maxsalary from hr.EMPLOYEES group by DEPARTMENT_ID
-- here we use an alias name for specific column== when we apply alias name no space allowed when we directly try to apply
-- if we want space in alias name we have "max salary" use double coat

-- select DEPARTMENT_ID,COUNT(*) from hr.EMPLOYEES 
-- group by DEPARTMENT_ID having COUNT(*)> 2
-- we use having for post filtering

-- select DEPARTMENT_ID,sum(salary) from hr.EMPLOYEES
-- group by DEPARTMENT_ID having sum(salary)>100000

-- select DEPARTMENT_ID,COUNT(*) from hr.EMPLOYEES 
-- group by DEPARTMENT_ID having COUNT(*)=1









