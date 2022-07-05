-- get me al info who is working as IT_PROG or SA_REP
select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

-- how many employee working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

-- how many employees making more than 8000
select count(*) from EMPLOYEES
where salary>8000;

-- how many unique first names we have?
select count(distinct FIRST_NAME)
from EMPLOYEES;

-- get me all employees information based on who making more salary to low salary
select * from EMPLOYEES
order by salary desc;

--desc 9-0 Z-A
--asc 0-9 A-Z

-- get me all emp info order by alphabetical based on firstname
select * from EMPLOYEES
order by FIRST_NAME;
-- NOTE: default order type is asc if you don't specify after column name

-- get me all employees whose first name starts with C
select * from EMPLOYEES
where FIRST_NAME like 'C%';

-- get me 5 letter first names the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

-- get me first names second char is u
select * from EMPLOYEES
where FIRST_NAME like '_u%';

-- find minimum salary
select MIN(SALARY) from EMPLOYEES;

-- find max salary
select max(salary) from employees;

-- find avg salary
select avg(salary) from employees;

-- round
select round(avg(salary), 2) from EMPLOYEES;

-- sum
select SUM(SALARY) from EMPLOYEES;


