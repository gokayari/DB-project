-- how to find employees information of who is making highest salary in the company
select * from EMPLOYEES
order by SALARY desc ;

select max(SALARY) from EMPLOYEES; --the highest salary

select * from EMPLOYEES --highest salary employee info
where SALARY = 24000;

select *                --oneshot combining two queries
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--highest second salary:
select max(SALARY)          --oneshot combining two queries
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary?
select *
from EMPLOYEES              --oneshot combining three queries
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));

-- get the first 10 people on the list
select *
from EMPLOYEES
where ROWNUM < 11;

--list the employees who is making top 10 salary

--get the first(!) 10 people then order them high to low based on salary:
select *
from EMPLOYEES
where ROWNUM <11
order by SALARY desc;

-- order all(!) employees based on salary high to low then display only first 10 result
select *
from (select *
      from EMPLOYEES
      order by SALARY desc)
where ROWNUM <11;