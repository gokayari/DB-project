select * from employees;

select * from departments;

select first_name, last_name, DEPARTMENT_NAME
from employees e left join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;