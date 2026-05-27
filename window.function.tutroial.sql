## window functions= window functions in SQL are used to perform calculation across related rows while still keeping each row in the result set

SELECT gender, avg(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id
     GROUP by gender;

## over()= is it calculate everybody
SELECT gender, avg(salary) over()
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT gender, avg(salary) over(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
SELECT dem.first_name,dem.last_name, gender, avg(salary) over(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
  ## sum,over()   
SELECT dem.first_name,dem.last_name,gender, sum(salary) over(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
     ## sum,over()
     SELECT dem.first_name,
     dem.last_name,
     gender,salary,
     sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;

##over,row_number()
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
 row_number() over (partition by gender order by salary desc) as unique_number
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
     
##row_number(),rank()
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
 row_number() over (partition by gender order by salary desc) as row_num,
 rank() over(partition by gender order by salary desc) as rank_num
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;

## row_number(),rank(),dense_rank()
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
 row_number() over (partition by gender order by salary desc) as row_num,
 rank() over(partition by gender order by salary desc) as rank_num,
  dense_rank() over(partition by gender order by salary desc) as dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id;
