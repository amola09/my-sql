use batch12pm;
show tables;
describe employee;
select * from employee;

-- DML
-- update
-- delete
-- alias

-- alter DDL

-- alter command is used to alter the structure/schema of table
-- add/modify/drop
alter table employee add column jobtitle varchar(20) default 'Manager';

alter table employee add column workmode varchar(20) default 'wfo';

alter table employee drop column jobtitle;

alter table employee drop column id ;
describe employee;
alter table employee add column id int primary key auto_increment;

alter table employee drop primary key; -- error

select * from employee;
 
alter table employee modify column middlename varchar(30);

alter table employee modify column workmode varchar(10);
alter table employee modify column workmode varchar(2);

alter table employee modify column id int; -- removes auto_increment constraint
alter table employee drop primary key; -- drops primary key constraint

alter table employee modify location varchar(20);
describe employee;
alter table employee modify location varchar(20) default 'Mumbai';

 alter table employee add primary key(id);

alter table employee modify column id int auto_increment;


-- DDL VS DML
-- -----------------------------

-- Data Definition Language - deals with table structure

-- Create, Alter, Drop - DDL commands

-- Data Manipulation Language - here we deal with the data directly.

-- insert, update, delete - DML commands

-- delete from employee; -- DML 
-- delete delets records one by one ---slow

-- Truncate also removes all records - DDL

-- truncate internally drops the table and recreates it.--- fast