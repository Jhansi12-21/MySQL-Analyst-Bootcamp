GROUP BY---
SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT age
FROM employee_demographics
GROUP BY age;

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;

SELECT gender , AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

##ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender,age ASC;

SELECT *
FROM employee_demographics
ORDER BY 5,4;

## HAVING VS GROUP BY

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

