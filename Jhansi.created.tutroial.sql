CREATE DATABASE education_and_faculty;
USE education_and_faculty;

CREATE TABLE  employee_details (
employee_id INT not null,
first_name varchar(50),
age INT not null,
gender varchar(10),
birth_date date,
primary key (employee_id)
);

INSERT into employee_details(employee_id ,first_name ,age ,gender ,birth_date)
values
(111,'anusha',21,'female','2005-11-12'),
(112,'ammu',25,'female','2000-3-4'),
(113,'ram',21,'male','2005-4-3');
SELECT * FROM employee_details;

CREATE TABLE employee_fees(
employee_id INT not null,
first_name varchar(50),
occupation varchar(50),
salary INT,
birth_date date);

INSERT into employee_fees(employee_id,first_name,occupation,salary,birth_date)
VALUES
(111,'anusha','maths',50000,'2005-11-12'),
(112,'ammu','soft skills',55000,'2000-3-4'),
(113,'ram','ds',60000,'2005-4-3');
SELECT * FROM employee_fees;  

CREATE TABLE  education_departments(
employee_id INT not null,
employee_departments varchar(50),
primary key(employee_id));

INSERT into education_departments(employee_id,employee_departments)
VALUES
(111,'maths'),
(112,'english'),
(113,'social');
SELECT * FROM education_departments;
 
 
 ikkada yenti ante 1.manaki tables vallu rakapothey(main database midha right click ichi all refresh isthey vasthundhi)
 2.result grid rakapothey 1st and 2nd lines ni sperate ga click cheyyali sparkI vunna dhani
 3.next tables ki values ravali ante  2..steps
 * SELECT * FROM table name; rayali
 * next only spark vunna symbole ye click cheyyali