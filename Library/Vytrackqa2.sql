select concat(first_name,' ',last_name) full_name, e.email
                from orocrm_contact c inner join orocrm_contact_email e
                on c.id = e.owner_id
                where e.email = 'mrjakc@mail.ru';

select id, first_name, last_name from orocrm_contact
where first_name = 'Mister';

select * from orocrm_contact_email;

-- write the query to get first_name, last_name, email for Mister
select c.first_name, c.last_name, e.email
from orocrm_contact c
inner join orocrm_contact_email e
on c.id = e.owner_id
where first_name = 'Mister'; -- or: where e.email = 'mrjakc@mail.ru';

