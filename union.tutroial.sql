## unions= it is an SQL operator used to combine the rows of two or more select statements into a single result se

SELECT birth_date,age
FROM employee_demographics
UNION
SELECT  salary,dept_id
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name ,'old' AS label
FROM employee_demographics
where age > 50
UNION
SELECT first_name, last_name ,'highly paid employee' AS label
FROM employee_salary
where salary > 70000
;

SELECT first_name,last_name,'old man' as label
FROM employee_demographics
where age> 50 and gender ='male'
union
SELECT first_name,last_name,'old lady' as label
FROM employee_demographics
where age> 40 and gender ='female'
union
SELECT first_name,last_name,'highly paid employee'as label
FROM employee_salary
where salary> 50000
order by first_name,last_name
;



