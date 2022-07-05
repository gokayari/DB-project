-- get me unique JOB_ID
select distinct JOB_ID from EMPLOYEES;

-- get me average salary for IT_PROG
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

-- unique JOB_ID with avg salary, count, summary
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

-- get me JOB_ID's their avg salary is more than 5K
-- it is not correct approach:
select JOB_ID, avg(SALARY)
from EMPLOYEES
where SALARY > 5000 --we take job_ids whose salaries just are bigger than 5000
group by JOB_ID;
-- it is correct solution:
select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg (salary) > 5000; --we take job_ids whose average of salaries are bigger than 5000