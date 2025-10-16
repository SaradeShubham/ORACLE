-- 1.Find the total, average, minimum, and maximum credit limit of all customers.
-- DESC SH.CUSTOMERS
-- SELECT * FROM SH.CUSTOMERS
-- SELECT SUM(CUST_CREDIT_LIMIT) AS SUM_CREDIT,
-- AVG(CUST_CREDIT_LIMIT) AS AVG_CREDIT,
-- MIN(CUST_CREDIT_LIMIT) AS MIN_CREDIT,
-- MAX(CUST_CREDIT_LIMIT)AS MAX_CREDIT
-- FROM SH.CUSTOMERS

-- 2.Count the number of customers in each income level.
-- SELECT CUST_INCOME_LEVEL,
-- COUNT(CUST_ID) AS NUMBEROFCUSTOMERS
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_INCOME_LEVEL
-- ORDER BY
-- NUMBEROFCUSTOMERS DESC

-- 3.Show total credit limit by state and country.
-- SELECT COUNTRY_ID, CUST_STATE_PROVINCE,SUM (CUST_CREDIT_LIMIT) AS TOTALCREDITLIMIT
-- FROM SH.CUSTOMERS
-- GROUP BY COUNTRY_ID,CUST_STATE_PROVINCE
-- ORDER BY COUNTRY_ID,CUST_STATE_PROVINCE

-- 4.Display average credit limit for each marital status and gender combination.
-- SELECT CUST_MARITAL_STATUS,CUST_GENDER,
-- AVG(CUST_CREDIT_LIMIT) AvgCreditLimit
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS,CUST_GENDER

-- 5.Find the top 3 states with the highest average credit limit.







