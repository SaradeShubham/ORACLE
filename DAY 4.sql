-- select nvl  (null,'test value') from dual

-- select nvl (null, 'test') from dual

-- select nvl ('oracle','test') from dual
-- for this thre is no null value existed there for the it keep data as it is as Oracle


-- select * from sh.CUSTOMERS
-- select cust_id, nvl(CUST_MARITAL_STATUS,'not mentioned') from sh.CUSTOMERS

-- select nvl2 ('oracle', 'has value','has no value')
-- select nvl2(null,'has value','has no value')

--##nullif== if both values are same it returns null
   --     == if both values are not same it returns 1st value as result

-- select nullif(100,100) from dual
-- select nullif(100,200) from dual

-- select nullif('asd','jkl') from dual
-- select nullif('asd','asd') from dual
-- we can use nullif both for number and characters 

-- ## coalesce
-- it returns first not null expression

-- select coalesce (null,null,'oracle','SQL')from dual
-- select coalesce (null,'data','oracle','sql') from dual

-- select coalesce ('data','oracle','sql') from dual

-- select * from hr.EMPLOYEES


-- select first_name,salary, CASE
-- when salary >15000 then 'high salary'
-- when salary BETWEEN 8000 and 14999 then  'medium salary'
-- else 'low salary'
-- end as salary_category
-- from hr.EMPLOYEES

-- select first_name,department_id , CASE
-- when department_id = 90 then 'HR dept'
-- when department_id = 50 then 'IT dept'
-- else 'other'
-- end as department
-- from hr.EMPLOYEES


-- select 
-- max(salary) as hieghest_salary,
-- MIN (salary)as lowest_salary
-- from hr.EMPLOYEES

-- SELECT first_name,salary,CASE
-- when salary between 0 and 5475 then 'low salary'
-- when salary between 5475 and 10950 then 'medium low'
-- when salary between 10951 and 16425 then 'medium'
-- else  'high' end as salary_range
-- from hr.employees

-- ##permenat tanle=  data persist until you delete this

-- ##Views= its a vertual table 
-- ##it based on select query  few column 
--##views doesnt store the data physicaly 
--## when we run view it run underlying Query

--##Materalized views== it is a vertual table based on the quary and physical copy of rhe data
--## it consume more memory but as compare to its faster

--## Temp Tables == 

--##CTE = Common Table Expressions=
-- it comea with with

--##External table

-- ##COMMON TABLE EXPRESSIONS==

-- First we going without CTE

-- SELECT employee_id,first_name,department_id,salary,row_number()
-- over(PARTITION by department_id order by salary desc) as rank_wise from hr.EMPLOYEES


-- select *from(
-- SELECT employee_id,first_name,department_id,salary,row_number()
-- over(PARTITION by department_id order by salary desc) as rank_wise from hr.EMPLOYEES)
-- where rank_wise=1

-- ##Now by using CTE (starts with 'with')

-- with department_salary_rank as (
--     select employee_id,
--            first_name, 
--            department_id,
--            salary,
--            ROW_NUMBER()over (PARTITION BY department_id order by salary desc)
--            as rn 
--            from hr.employees)
--  select *           
-- from department_salary_rank
-- where rn=1


-- ##sh.customers for each city disply top 2 customers by credit limit using sub quey and CTE

-- SELECT * from (
--     select cust_city , cust_credit_limit,
--     row_number()
--     over ( PARTITION by customers.CUST_CITY
--     order by  cust_credit_limit desc ) as rn
--     from sh.customers
-- )
-- where rn= 2

-- select cust_id,
--        cust_first_name,
--        cust_credit_limit,
--        rank() over (order by cust_credit_limit desc) as Credit_rank
-- from sh.CUSTOMERS

-- select * from ( select cust_id,
--        cust_first_name,
--        cust_credit_limit,
--        rank() over (order by cust_credit_limit desc) as Credit_rank
-- from sh.CUSTOMERS)ranked_customers
-- where  Credit_rank= 2

-- with city_rank as (
--     select cust_id,
--            cust_first_name,
--            cust_city,
--            cust_credit_limit,
--            row_number() over (PARTITION by cust_city order by cust_credit_limit ) as rn
--     from sh.customers
-- )
-- select * from city_rank
-- where rn=2

-- DAY 6 40.00 min







