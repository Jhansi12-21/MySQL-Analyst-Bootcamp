SELECT *
FROM employee_salary
WHERE salary < 60000
;

SELECT *
FROM employee_salary
WHERE first_name = 'jerry'
;

SELECT *
FROM employee_salary
WHERE salary <= 60000
;
SELECT *
FROM employee_demographics
WHERE AGE = 40
;
SELECT *
FROM employee_demographics
WHERE AGE < 47
;
SELECT *
FROM employee_demographics
WHERE gender != 'male'
;
SELECT *
FROM employee_demographics
WHERE birth_dare < '1989-01-01'
;
-- AND OR NOT --LOGICAL OPERTORS
SELECT *
FROM employee_demographics
WHERE birth_dare < '1989-01-01'
AND gender = 'female'
;
SELECT *
FROM employee_demographics
WHERE birth_dare < '1989-01-01'
OR gender = 'female'
;
SELECT *
FROM employee_demographics
WHERE birth_dare < '1989-01-01'
OR NOT gender = 'female'
;
SELECT *
FROM employee_demographics
WHERE ( first_name = 'april' AND age = 29) OR age > 55 
;


-- LIKE STATMENT
-- HERE WE USE TWO TYPE OF LIKE % (any thing for before or after)and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE'to%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE'%o%';
SELECT *
FROM employee_demographics
WHERE first_name LIKE'a__%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE'1985%';


