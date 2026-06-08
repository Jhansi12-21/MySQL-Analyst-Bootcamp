## temporary tables-->they are two types

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_sports varchar(100)
);

INSERT INTO temp_table
values('a','j','circket');

select *
from temp_table;

CREATE TEMPORARY TABlE salary_over_50k
select *
from employee_salary
where salary>=50000;

select*
from salary_over_50K;
