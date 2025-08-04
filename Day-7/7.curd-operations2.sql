use batch12pm;
show tables;

create table employee(
id int primary key auto_increment,
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int unsigned not null,
salary int unsigned not null ,
location varchar(20) not null default 'Pune'
);

select * from employee;

-- curd 
select * from employee;
 select * from employee where age >30;
 select * from employee where location = 'pune';
 select * from employee where binary location ='Pune';
 select * from employee where middlename is Null;
 select * from employee where firstname = 'sunil';
 
 insert into employee values(11, 'sunil' , 'suresh', 'rana', 42, 78000, 'Kolkota');
 select * from employee where firstname = 'sunil' and lastname= 'joshi';
 
 -- alias
 select firstname , lastname, salary from employee;
 
  select firstname as Name, lastname as Surname, salary from employee where location = 'pune';
  select firstname as Name, lastname as Surname, location,salary from employee where salary > 70000;
  
  -- update 
  
   update employee set location = 'Kolkota' where firstname= 'sunil';
-- In MySQL Workbench, safe update mode isn't just about having a WHERE clause — 
-- the clause must reference a key column (like a PRIMARY KEY or UNIQUE INDEX). 
-- firstname and lastname are not key columns, so even with a WHERE clause, 
-- Workbench considers this risky.
   
   update employee set location = 'Kolkota' where id = 11;

set sql_safe_updates = 0; -- off
update employee set location = 'Mumbai' where firstname= 'sunil';

set sql_safe_updates = 1; -- on
select * from employee;

update employee set salary = salary+5000;
update employee set salary = salary+5000 where location = 'pune';

 update employee set location = 'Hydrabad' where location = 'Kolkota';
 
 -- delete 
 set sql_safe_updates = 0;
 delete  from employee where lastname = 'rana' and firstname= 'sunil';
 set sql_safe_updates = 1;
 delete  from employee where id = 10;
 
 delete from employee; -- delets all records from table
 
 
 INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (1, 'Rahul', NULL, 'Sharma', 30, 60000, 'Bangalore');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (2, 'Sneha', 'K.', 'Verma', 28, 55000, 'Mumbai');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (3, 'Amit', NULL, 'Patel', 35, 75000, 'Delhi');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (4, 'Neha', 'R.', 'Mishra', 42, 68000, 'Bangalore');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (5, 'Vikas', 'L.', 'Gupta', 29, 62000, 'Hyderabad');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (6, 'Divya', NULL, 'Nair', 27, 53000, 'Chennai');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (7, 'Rohit', 'A.', 'Kumar', 33, 70000, 'Pune');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (8, 'Priya', NULL, 'Singh', 41, 64000, 'Kolkata');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (9, 'Ankit', 'B.', 'Yadav', 34, 72000, 'Bangalore');
INSERT INTO employee (id, firstname, middlename, lastname, age, salary, location) VALUES (10, 'Meera', NULL, 'Desai', 26, 50000, 'Ahmedabad');

delete from employee where firstname = 'meera';