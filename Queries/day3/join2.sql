select * from employees;

select * from departments;

select first_name, last_name, DEPARTMENT_NAME
from employees e left join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

Select customer_id, first_name, last_name, customer.address_id, address.address_id address, phone
FROM customer LEFT OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.address_id IS NULL;

SELECT * FROM customer FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.address_id IS NULL OR address.address_id IS NULL;