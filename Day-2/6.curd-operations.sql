use batch12pm;
show tables;
select * from employee;

-- primary key, unique key, auto incerment , default , not null 
-- create db, table insrt recors in table;

-- crud  
drop table employee;
create table employee(
id int primary key auto_increment,
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int unsigned not null,
salary int unsigned not null ,
location varchar(20) not null default 'Pune'
);

insert into employee values(1, 'rani', 'mohan', 'devi', 35, 60000, 'Delhi');
insert into employee(firstname, lastname , age ,salary) values('manju', 'devi', 35, 60000);

INSERT INTO employee (firstname, lastname, age, salary) 
VALUES 
 
  ('sita', 'raman', 28, 52000),
  ('amit', 'sharma', 40, 70000),
  ('geeta', 'verma', 32, 58000),
  ('rajesh', 'singh', 45, 75000);
  
 INSERT INTO employee (firstname, middlename, lastname, age, salary,location) 
VALUES  
  ('anita','anand' ,'jain', 29, 53000, 'Mumbai'),
  ('vikas', 'kiran','mehra', 38, 62000, 'Mumbai'),
  ('pooja', 'Gopal','gupta', 34, 60000, 'Hydrabad'),
  ('sunil', 'deepak','joshi', 36, 61000, 'Hydrabad');
  
  select * from employee;
  
  select * from employee where age > 30;
  
INSERT INTO employee (firstname,middlename, lastname, age, salary) 
VALUES ('manju', 'mohan','devi', 35, 60000), ('ravi', 'santosh','kumar', 30, 55000);
  

