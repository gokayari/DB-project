SELECT * FROM EMPLOYEES ;
--reads all column from employees table

select * from DEPARTMENTS;
--reads all column from departments table

select DEPARTMENT_NAME from DEPARTMENTS;
--get only department names from departments table

select city from locations;
-- displays city names

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;
-- get firs names, last names and salaries from employees

select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;
-- get street address and postal code


select distinct  FIRST_NAME from EMPLOYEES;
-- removes duplicates
