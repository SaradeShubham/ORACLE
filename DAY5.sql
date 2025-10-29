-- select * from hr.employees

-- select * from sh.CUSTOMERS
-- ## LAG and LEAD

-- select 
--      cust_city,
--      cust_id,
--      cust_first_name,
--      cust_credit_limit,
--      lag(cust_credit_limit)over (partition by cust_city order by cust_credit_limit desc ) as prev_limit,
--      lead(cust_credit_limit)over (partition by cust_city order by cust_credit_limit desc ) as next_limit
-- from sh.CUSTOMERS
-- order by cust_city,cust_credit_limit desc

-- ## 
-- with ranked as (
--     SELECT
--          employee_id,
--          first_name,
--          last_name,
--          salary,
--          row_number() over (order by salary desc) as rn
--     from hr.EMPLOYEES
-- )
-- select 
--      first_name,
--      last_name,
--      salary,
--      case 
--         when rn<= 5 then 'platinum tier'
--         else 'standard tier'
--     end as tier
-- from ranked 
-- order by salary desc

-- ## from sh.customers , cust_id,cust_credit_limit, classify them premium or standerd
-- top  5 will be premium and rest all standerd

-- with ranked as(
--     SELECT
--          cust_id,
--          cust_credit_limit,
--          row_number() over (order by cust_credit_limit desc) as custlimit
--     from sh.customers
-- )
-- SELECT
--      cust_id,
--      CUST_CREDIT_LIMIT,
--     case 
--         when custlimit <=5 then 'premium'
--         else 'standard'
--         end as tier 
-- from ranked 
-- order by cust_credit_limit desc

-- ## MOVING AVERAGE
-- ##COMMULATIVE SUM
-- ##COMMULATIVE PRODUCT


-- ### CREAT TABLLES
-- CREATE TABLE TABLE NAME (COLUMNS,KEYS)
-- CREATE OR REPLACE VIEW
-- CREATE OR REPLACE SEQUENCE
-- CREATE INDEX 
-- CREAT PROCEDURE
-- CREAT TRIGGER
-- CREAT FUNCTION
-- CREATE MATERALISED VIEW

-- ## CHARACTER:
-- char(n): fixed length: 10 bytes data
-- varchar2(10) : variable length , sring upto n bytes
-- nchar(10): unicode ccharacter data, uses national character data.
-- clob : characterlarge object = stores large text data (upto 4 gb)
-- long : deprecated : 2gb noe we mostly use clob

-- ## NUMERIC DATA TYPES
-- number (p,s) where p= precision total digit and s= scale
-- float(p)
-- binary double :64 bits
-- binary float : 32 bits

-- ##LOB(Lagre Object Files)
-- blob = binary large object
-- clob = character large object
-- bfile= pointer to external file store in os(is also called external tables)

-- ## DATE TIME : TIMESTAMP,DATE,INTERVSL

-- ##Boolean : it is used in l sql only, boolean(true or false)
 
--  Creation of a table
-- create table student_detailes(
--     student_id number(5),
--     student_name varchar2(50),
--     student_emailid varchar(150),
--     student_join_date date,
--     student_sccholarship number(10,4),
--     student_resume clob,
--     student_photo blob,
--     student_timezone timestamp with time zone
-- )

-- ##constrains == 
-- purpose of constrsints is enforce business rule and integrity
-- not null, primary key,unique , foriegn key, check, default

-- ## index=
-- purpose of indexes is Query Perforance
-- B Tree index, bitmap index, unque index, composite index

-- ## CONSTRAINTS
-- NOT NULL== the column should not be contain NULL value
-- INSERT INTO 

-- create table employees (
--     emp_id number not null,
--     emp_name varchar2(10)
-- )
-- insert into employees (emp_id,emp_name) values (1,'john');
-- insert into employees (emp_id,emp_name) values (2, null)
-- select * from employees
-- drop table employees;

-- ## Unique constraints
-- unique and there is no duplicates
-- it allows null values and multiple null values because 
--  in oracle null!== null there for unique contains multiple null values

-- CREATE table employees (
--     emp_id number ,
--     emp_email varchar2 (100) UNIQUE
-- );

-- insert into employees VALUES (1,'xyz@gmail.com');
-- insert into employees VALUES (2, 'asdf@gmail.com');
-- insert into employees VALUES (3,'xyz@gmail.com')

-- select * from employees
-- drop table employees
-- ## Primary Key
-- unique + not null
-- it aply on single column or multiple column

-- create table order_items(
--     order_id number,
--     product_id number,
--     quantity number,
--     CONSTRAINT pk_order_items primary key (order_id,product_id)
-- )

-- ## CHECK CONSTRAIN
-- CREATE TABLE EMPLOYEE (SALARY NUMBER CHECK(SALARY>0)
-- AND SALARY<1000000))

-- ##DEFAULT CONSTRAIN 
-- default value in case if none is provide during the insert it takes the default value

-- CREATE TABLE products (
--     product_id NUMBER PRIMARY KEY,
--     product_name VARCHAR2(100),
--     quantity NUMBER DEFAULT 0
-- );

-- ##foreign key 
-- it can be a single column or combination of column


-- CREATE TABLE orders (
--     order_id NUMBER PRIMARY KEY,
--     order_date DATE,
--     customer_id NUMBER,
--     CONSTRAINT fk_customer FOREIGN KEY (customer_id)
--         REFERENCES customers(customer_id)
-- );





