## LIMIT(it is used for table limit)(ikkada desc order ani ichi (2,1) isthathey 2 desc order vachey next desc order number print avvuthundhi) 

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1
;
 ## aliasing( this is used to change column name)
 
 
 SELECT gender, AVG(age) AS AVG_age
 FROM employee_demographics
 GROUP BY gender
 HAVING AVG_age > 40
 ; 
 
 SELECT first_name, AVG(salary) as avg_salary 
 FROM employee_salary
 GROUP BY first_name
 HAVING AVG_salary > 10000
 ;