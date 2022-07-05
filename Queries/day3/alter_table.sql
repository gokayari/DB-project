select * from SCRUMTEAM;

--adding new column:
ALTER TABLE SCRUMTEAM add salary Integer;

--update existing employees salary:
update SCRUMTEAM
set salary = 100000
where EM_ID = 1;

update SCRUMTEAM
set salary = 90000
where EM_ID = 2;

update SCRUMTEAM
set salary = 120000
where EM_ID = 4;

--rename the column
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;

select * from scrumteam;

--delete, drop column
ALTER TABLE scrumteam DROP COLUMN annual_salary;

--how to change table name?
ALTER TABLE scrumteam RENAME TO agileteam;  ---scrumteam-->agileteam
ALTER TABLE agileteam RENAME TO scrumteam;  ---agileteam-->scrumteam

select * from scrumteam;

commit;

--truncate, if we want to delete all data from table, but still keep the table structure, we use truncate

TRUNCATE TABLE scrumteam;

--if we want to delete the table and data together
DROP TABLE scrumteam;



