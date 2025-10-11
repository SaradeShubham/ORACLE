-- 26. Count the number of customers in each city.
-- select * from sh.CUSTOMERS
-- desc sh.CUSTOMERS
-- select cust_city , count(*) "customer count" from sh.CUSTOMERS 
-- group by CUST_CITY

-- 27. Find cities with more than 100 customers.
-- select cust_city , count(*) "cust count" from sh.CUSTOMERS 
-- group by CUST_CITY 
-- having count(*)> 100

-- 28. Count the number of customers in each state.
-- select * from sh.CUSTOMERS
-- select cust_state_province, count(*) "cust state"
-- from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE

-- 29. Find states with fewer than 50 customers.

-- select cust_state_province, count(*) "cust state"
-- from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE
-- having count(*) <50


-- 30. Calculate the average credit limit of customers in each city.
-- select cust_city, avg(cust_credit_limit) "credit limit"
-- from sh.CUSTOMERS
-- group by CUST_CITY

-- 31. Find cities with average credit limit greater than 8,000.
-- select cust_city, avg(cust_credit_limit) "credit limit"
-- from sh.CUSTOMERS
-- group by CUST_CITY
-- having avg(CUST_CREDIT_LIMIT) >8000

-- 32. Count customers by marital status.
-- select cust_marital_status, count(*) "marital status"
-- from sh.CUSTOMERS
-- group by CUST_MARITAL_STATUS

-- 33. Find marital statuses with more than 200 customers.
-- select cust_marital_status, count(*) "marital status"
-- from sh.CUSTOMERS
-- group by CUST_MARITAL_STATUS
-- having count(*) >200

-- 34. Calculate the average year of birth grouped by gender.
-- select CUST_GENDER, avg(cust_year_of_birth) "avg birth year"
-- from sh.CUSTOMERS
-- group by cust_gender

-- 35. Find genders with average year of birth after 1990.
-- select CUST_GENDER, avg(cust_year_of_birth) "avg birth year"
-- from sh.CUSTOMERS
-- group by cust_gender
-- having avg(CUST_YEAR_OF_BIRTH) >1990

 -- 36. Count the number of customers in each country.
-- select country_id, count(*) "country"
-- from sh.CUSTOMERS
-- group by COUNTRY_ID

-- 37. Find countries with more than 1,000 customers.
-- select country_id, count(*) "country"
-- from sh.CUSTOMERS
-- group by COUNTRY_ID
-- having count(*) >1000

-- 38. Calculate the total credit limit per state.
-- select cust_state_province, sum(cust_credit_limit)
-- from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE

-- 39. Find states where the total credit limit exceeds 100,000.
-- select cust_state_province, sum(cust_credit_limit)
-- from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE
-- having sum(CUST_CREDIT_LIMIT) >100000

-- 40. Find the maximum credit limit for each income level.
-- select cust_income_level, max(cust_credit_limit)
-- from sh.CUSTOMERS
-- group by CUST_INCOME_LEVEL

-- 41. Find income levels where the maximum credit limit is greater than 15,000.
-- select cust_income_level, max(cust_credit_limit)
-- from sh.CUSTOMERS
-- group by CUST_INCOME_LEVEL
-- having max(CUST_CREDIT_LIMIT) >15000

-- 42. Count customers by year of birth.
-- SELECT CUST_YEAR_OF_BIRTH, COUNT(*) "BIRTH YEAR COUNT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_YEAR_OF_BIRTH

-- 43. Find years of birth with more than 50 customers.
-- SELECT CUST_YEAR_OF_BIRTH, COUNT(*) "BIRTH YEAR COUNT"
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_YEAR_OF_BIRTH
-- HAVING COUNT(*) >50

-- 44. Calculate the average credit limit per marital status.
-- SELECT CUST_MARITAL_STATUS, AVG(CUST_CREDIT_LIMIT)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS

-- 45. Find marital statuses with average credit limit less than 5,000.
-- SELECT CUST_MARITAL_STATUS, AVG(CUST_CREDIT_LIMIT)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_MARITAL_STATUS
-- HAVING AVG(CUST_CREDIT_LIMIT) <5000

-- 46. Count the number of customers by email domain (e.g., `company.example.com`).
-- SELECT CUST_EMAIL, COUNT(*)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_EMAIL

-- 47. Find email domains with more than 300 customers.
-- SELECT CUST_EMAIL, COUNT(*)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_EMAIL
-- HAVING COUNT(*) >300

-- 48. Calculate the average credit limit by validity (`CUST_VALID`).
-- SELECT CUST_VALID, AVG(CUST_CREDIT_LIMIT)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_VALID

-- 49. Find validity groups where the average credit limit is greater than 7,000.
-- SELECT CUST_VALID, AVG(CUST_CREDIT_LIMIT)
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_VALID
-- HAVING AVG(CUST_CREDIT_LIMIT) >7000

-- 50. Count the number of customers per state and city combination where there 
-- are more than 50 customers.
SELECT CUST_STATE_PROVINCE, CUST_CITY, COUNT(*) AS CUSTOMER_COUNT
FROM SH.CUSTOMERS
GROUP BY CUST_STATE_PROVINCE, CUST_CITY
HAVING COUNT(*) > 50



