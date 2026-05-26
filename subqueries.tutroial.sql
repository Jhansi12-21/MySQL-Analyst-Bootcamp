## subqueries== it means query presented  in another query it called subqueries. and also used for without using group by .
 
 SELECT *
 FROM employee_demographics
 WHERE employee_id IN 
                    (SELECT employee_id
                     FROM employee_salary
                     where dept_id = 1);
 
 SELECT first_name,
 salary,
(SELECT  AVG(salary)
FROM employee_salary)
 FROM employee_salary
 ;
 

SELECT gender ,AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

 
SELECT *
FROM
 (SELECT gender ,AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender ) as agg_table
;
 
SELECT AVG('MAX(age)')
FROM
 (SELECT gender ,
 AVG(age) as avg_age,
 MAX(age) as max_age,
 MIN(age) as min_age, 
 COUNt(age) as count_age
FROM employee_demographics
GROUP BY gender ) as agg_table;

SELECT AVG(MAX_age)
FROM
 (SELECT gender ,
 AVG(age) as avg_age,
 MAX(age) as max_age,
 MIN(age) as min_age, 
 COUNt(age) as count_age
FROM employee_demographics
GROUP BY gender ) as agg_table
;

