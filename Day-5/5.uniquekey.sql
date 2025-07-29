use batch12pm;
-- composit primary key and unique key

create table student(
coursename varchar(20) not null,
rollno int not null,
firstname varchar(20) not null,
lastname varchar(20) not null,
location varchar(20) not null default 'pune',
primary key(coursename,rollno)
);  

insert into student values('cs', 1, 'ajay', 'mane','nagpur');
insert into student values('cs', 2, 'ajay', 'mane','nagpur');
insert into student values('it', 2, 'ajay', 'mane','nagpur');
insert into student values('mech', 2, 'ajay', 'mane','nagpur');
select * from student;

-- unique key
-- uniquely ideentify record 
-- want to give null as input 
-- mysql allows multiple null (other dbs may allow null only oncs)

-- you can have only one primary key
-- and the primary key cannot hold any NULL
-- we should use primary key when we have to uniquely identify each record.
-- unique key can hold NULL
-- for example in MySQL a unique key can hold any number of NULL
-- values
-- in some of the other famous DBs unique key hold only one NULL
-- so the purpose of unique key is to make sure the values do not
-- duplicate
-- we can have only one primary key but multiple unique keys in a
-- table.
create table student_sport(
rollno int not null,
firstname varchar(20) not null,
lastname varchar(20) not null,
jersyno int unique key
); 
insert into student_sport values(3, 'sanjay', 'rao',null);



CREATE TABLE employee (
id int,
firstname varchar(20),
lastname varchar(20),
age int NOT NULL,
UNIQUE KEY(id, firstname)
);


create table student_sport(
rollno int primary key auto_increment,
firstname varchar(20) not null,
lastname varchar(20) not null,
jersyno int unique key
); 

