select * from testers
union               --nested in order by id number, together
select * from developers;   --does not allow to duplicate

select * from testers
union all               --for separate, it allows to duplicate
select * from developers;

select names from testers
union
select names from developers;

select names from testers
union all
select names from developers;

select names from testers
minus               --unique elements for testers
select names from developers;

select names from developers
minus               --unique elements for developers
select names from testers;

select names from developers
intersect           --common elements
select names from testers;

--how to find duplicate names in employees table

select  first_name,count(*)
from employees
group by first_name
having count(*) >1;
