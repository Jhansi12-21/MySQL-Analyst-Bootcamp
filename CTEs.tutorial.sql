## Advance CTEs stands for common table expression = used for sub query

with CTE_example as
(
SELECT gender, avg(salary), max(salary), min(salary), count(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id
     GROUP BY gender)
     SELECT*
    FROM CTE_example 
     ;
     
     with CTE_example as
(
SELECT gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id
     GROUP BY gender)
     SELECT avg(avg_sal)
    FROM CTE_example 
     ;
     
     
##creating multiple CTEs
     with CTE_example as
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'),
CTE_example2 as
(SELECT employee_id,salary
FROM employee_salary
WHERE salary > 50000)
     SELECT*
    FROM CTE_example 
    JOIN CTE_example2
   on CTE_example.employee_id = CTE_example2.employee_id
     ;
     
     