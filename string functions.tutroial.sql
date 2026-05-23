## string functions (this are predefined function used to perform operations on text or strings,such as searching,joinimg,extracting and modifying characters)

SELECT length('jhansi');

**length('last_name')=it give only length of last_name
SELECT last_name ,length('last_name')
FROM employee_demographics;

By removing ('') this .it can print (last_name) of list names length
SELECT last_name ,length(last_name)
FROM employee_demographics;

SELECT last_name ,length(last_name)
FROM employee_demographics
order by 2;

##upper case&lower case
SELECT upper('jhansi');
SELECT LOWER('JHANSI');

SELECT last_name ,UPPER(last_name)
FROM employee_demographics;

##TRIM(LEFT&RIGHT)
SELECT TRIM('      JHANSI     ');
SELECT LTRIM('JHANSI     ');
SELECT RTRIM('       JHANSI');

#left,right,substring
SELECT first_name,
LEFT(first_name ,4),
RIGHT(first_name,4)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name ,4),
RIGHT(first_name,4),
SUBSTRING(first_name,2,3)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name ,4),
RIGHT(first_name,4),
SUBSTRING(first_name,2,3),
birth_date
FROM employee_demographics;


SELECT first_name,
LEFT(first_name ,4),
RIGHT(first_name,4),
SUBSTRING(first_name,2,3),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

## Replace
SELECT first_name ,Replace(first_name,'a','n')
FROM employee_demographics;

##locate
SELECT first_name,locate('nn',first_name)
FROM employee_demographics;

##concat
SELECT first_name,last_name,
CONCAT(first_name,'   ',last_name)
FROM employee_demographics;






















