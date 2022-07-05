/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints (optional)
        colName3 DataType Constraints,
        ...
 */

create table ScrumTeam(
    Em_ID Integer Primary Key,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from SCRUMTEAM;

/*
 INSERT INTO tableName (column1, column2, ...)
 VALUES (value1, value2 ...);
 */

INSERT INTO ScrumTeam(em_id, firstname, lastname, jobtitle)
VALUES (1, 'Severus', 'Snape', 'Tester');

INSERT INTO ScrumTeam VALUES (2, 'Harold', 'Finch', 'Developer');

INSERT INTO ScrumTeam VALUES (3, 'Phoebe', 'Buffay', 'ScrumMaster');

INSERT INTO ScrumTeam VALUES (4, 'Micheal', 'Scofield', 'PO');

UPDATE ScrumTeam
SET jobtitle = 'Tester'
WHERE em_id = 4;

select * from ScrumTeam;

--Delete from table
/*
DELETE FROM table_name
WHERE condition
 */

DELETE FROM SCRUMTEAM
WHERE EM_ID = 3;

--saving changes
commit;

