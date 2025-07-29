use batch12pm;
select database();

-- not null
-- int signed/unsigned
-- varchar
-- create table 
-- insert a record in a table

-- default 
-- default notnull
-- primary key constraints

show tables;
describe employee;

drop table employee;

create table employee(
firstname varchar(20) not null,
lastname varchar(20) not null,
age int unsigned, 
salary int unsigned,
location varchar(20) default 'pune'
);

insert into employee(firstname, lastname, age, salary) values('dipanshu','chawde', 35, 100000);
select * from employee;
insert into employee(firstname, lastname, age, salary,location) values('dipanshu','chawde', 35, 100000, 'delhi');
insert into employee(firstname, lastname, age, salary,location) values('dipanshu','chawde', 35, 100000,null);

-- default takes default value if not given nut alows null value if manually

drop table employee;
create table employee(
firstname varchar(20) not null,
lastname varchar(20) not null,
age int unsigned, 
salary int unsigned,
location varchar(20) not null default 'pune'
);
insert into employee(firstname, lastname, age, salary) values('dipanshu','chawde', 35, 100000);
select * from employee;
insert into employee(firstname, lastname, age, salary,location) values('dipanshu','chawde', 35, 100000, 'delhi');
insert into employee(firstname, lastname, age, salary,location) values('dipanshu','chawde', 35, 100000,null);
insert into employee(lastname, age, salary) values('chawde', 35, 100000);


-- primary key constraint
	-- used to identy each record uniquely
    -- null not allowed
    -- there should be only one  primary key in a table 

insert into employee(firstname, lastname, age, salary,location) values('rakesh','sharma', 35, 100000, 'delhi');
drop table employee;

create table employee(
id int primary key,
firstname varchar(20) not null,
lastname varchar(20) not null,
age int unsigned, 
salary int unsigned,
location varchar(20) not null default 'pune'
);

-- create table employee(
-- id int,
-- firstname varchar(20) not null,
-- lastname varchar(20) not null,
-- age int unsigned, 
-- salary int unsigned,
-- location varchar(20) not null default 'pune',
-- primary key(id)
-- );


describe employee;
insert into employee(id,firstname, lastname, age, salary,location) values(001,'rakesh','sharma', 35, 100000, 'delhi');
select * from employee;
insert into employee(id,firstname, lastname, age, salary,location) values(001,'rakesh','sharma', 35, 100000, 'delhi');
insert into employee(id,firstname, lastname, age, salary) values(3,'dipanshu','chawde', 35, 100000);

-- composit primary key
-- auto incerment
-- unique key constraint