


SELECT
 first_name,
last_name,
age,
(age + 10) * 8 ,
gender
FROM parks_and_recreation.employee_demographics;
#PEMDAS

SELECT DISTINCT gender,first_name
FROM parks_and_recreation.employee_demographics; 