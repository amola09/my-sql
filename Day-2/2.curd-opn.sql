-- CURD operations
-- create -- insert statements
-- update -- update statements
-- retrive  -- select statements
-- delete -- delete statements

show databases;
create database batch12pm;
use batch12pm;
select database();

create table employee(
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
age int, 
salary int,
location varchar(20)
);

show tables;
describe employee;

-- retrive statements
select * from employee;

-- insert statements
insert into employee(firstname, middlename, lastname, age, salary, location) values('dipanshu', 'nitin', 'chawde', 35, 100000, 'pune');

insert into employee(firstname, lastname, age, salary, location) values('dipanshu', 'chawde', 35, 100000, 'pune');
insert into employee(firstname, middlename, lastname, age, salary, location) 
values('dipanshu', 'nitin', 'chawde', 35, 100000, 'pune'),
('tanish', 'nitin', 'chawde', 35, 100000, 'pune'),
('neel', 'nitin', 'chawde', 35, 100000, 'pune');


insert into employee values('rakesh', 'kumar', 'singh', 40, 100000, 'pune'),
('manish', 'kumar', 'singh', 35, 'pune'),
('satish', 'kumar', 'singh', 35, 100000, 'pune'); 

insert into employee values('rakesh', 'kumar', 'singh', 40, 100000, 'pune'),
('manish', 'kumar', 'singh', 35, 40000,'pune'),
('satish', 'kumar', 'singh', 35, 100000, 'pune');

insert into employee values ('rani', 'manish', 'kumari', -28, -260000, 'delhi');
insert into employee values( 40, 100000, 'pune');
insert into employee (age, salary, location) values( 40, 100000, 'pune');
select * from employee;

-- by default int datatype is signed integer
-- if no value inserted by default it will take null as value 

drop table employee;
-- not null constraints and unsigned integer (int)
create table employee(
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int unsigned, 
salary int unsigned,
location varchar(20) not null
);

insert into employee(firstname, middlename, lastname, age, salary, location) values('dipanshu', 'nitin', 'chawde', 35, 100000, 'pune');
insert into employee(firstname, lastname, age, salary, location) values('dipanshu', 'chawde', 35, 100000, 'pune');

insert into employee(firstname, age, salary, location) values('dipanshu',  35, 100000, 'pune');
insert into employee(firstname, middlename, lastname, age, salary, location) values('dipanshu', 'nitin', 'chawde', -35, 100000, 'pune');
insert into employee(firstname, middlename, lastname, age, salary, location) values('dipanshu', 'nitin', 'chawde', 35, -100000, 'pune');

insert into employee values('dipanshu', 'nitin', 'chawde', 35, 100000, null);

-- create table 
-- insert records
-- not null constraints
-- signed / unsigned int 






