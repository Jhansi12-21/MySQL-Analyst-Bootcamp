## CASE statment:- in sql is used to apply conditional logics in a query.it works like an if-else statment in programming languages.

SELECT first_name,
last_name,
age,
CASE
when age<=30 then 'young'
END
FROM employee_demographics;

SELECT first_name,
last_name,
age,
CASE
when age<=30 then 'young'
when age between 30 and 50 then 'old'
when age > 50 then 'on death door'
END
FROM employee_demographics;


SELECT first_name,
last_name,
age,
CASE
when age<=30 then 'young'
when age between 30 and 50 then 'old'
when age > 50 then 'on death door'
END as age_bracket
FROM employee_demographics;


## pay increase and bonus
-- < 50000=5%
-- >50000=7%
-- finance=10% 0f bonus

SELECT first_name,
last_name,
salary,
CASE
when salary < 50000 then salary  * 1.05
when salary > 50000 then salary  * 1.07
END as new_salary,
CASE
when dept_id = 6 then salary * 0.10
END as Bonus
FROM employee_salary;