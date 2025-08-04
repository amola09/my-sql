use batch12pm;
show tables;

create table students(
student_id int not null auto_increment,
student_fname varchar(20) not null,
student_lname varchar(20) not null,
student_mname varchar(20),
student_email varchar(20) not null,
student_phone varchar(15) not null,
student_alternate_phone varchar(15),
enrollment_date timestamp not null,
years_of_exp int not null,
student_company varchar(30),
batch_date varchar(20) not null,
source_of_joining varchar(30) not null,
location varchar(20) not null,
primary key(student_id),
unique key(student_email)
);

describe students;

-- TIMESTAMP-if not entered then need to define default current_timestamp, 
-- and if you want it should take by insert commend current time TIMESTAMP use now() in insert command


-- students seed data set-1
-- -----------------------------

insert into students 
(student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, 
location,enrollment_date) 
values('virat', 'kohli','virat@gmail.com', '9292929292', 3, 'flipkart', '5-02-2021','linkedin', 'hyderabad',now());

select * from students;

alter table students modify column enrollment_date timestamp not null default current_timestamp;

-- students seed data set-1
-- -----------------------------

insert into students(student_fname, student_lname, student_email,student_phone, years_of_exp, batch_date, source_of_joining,location)
values ('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 12, '19-02-2021', 'google', 'bangalore');

insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location) 
values('rahul', 'dravid','rahul@gmail.com', '9494949494', 8, 'walmart', '19-02-2021', 'quora','chennai' );

insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location) 
values('kapil', 'dev','kapil@gmail.com', '9291292292', 15, 'microsoft', '5-02-2021','friend', 'pune' ),
('brian', 'lara', 'brian@gmail.com', '9291297292', 18, 'tcs','5-02-2021', 'youtube', 'pune' ),
('carl', 'hooper', 'carl@gmail.com', '9291297392', 20, 'wipro','19-02-2021', 'youtube', 'pune'),
('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 14,'wipro', '19-02-2021', 'google', 'chennai');

select * from students;


insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location) 
values('kapil', 'dev','kapil1@gmail.com', '9291292292', 15, 'microsoft', 'abcd','friend', 'pune' );

-- ------date datatype ----------------------------------------
-- Basic Facts about DATE
-- Format: 'YYYY-MM-DD'
-- Example: '2025-08-01'
-- Range: '1000-01-01' to '9999-12-31'
-- Storage: Takes 3 bytes of storage.

drop table students;

create table students(
student_id int not null auto_increment,
student_fname varchar(20) not null,
student_lname varchar(20) not null,
student_mname varchar(20),
student_email varchar(20) not null,
student_phone varchar(15) not null,
student_alternate_phone varchar(15),
enrollment_date timestamp not null default current_timestamp,
years_of_exp int not null,
student_company varchar(30),
batch_date date not null,
source_of_joining varchar(30) not null,
location varchar(20) not null,
primary key(student_id),
unique key(student_email)
);

-- error 
insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, 
location, enrollment_date) 
values
('virat', 'kohli','virat@gmail.com', '9292929292', 3, 'flipkart', '5-02-2021','linkedin', 'hyderabad',now());

-- --correct 
insert into students 
(student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location, enrollment_date) 
values
('virat', 'kohli','virat@gmail.com', '9292929292', 3, 'flipkart', '2021-02-05','linkedin', 'hyderabad',now());

insert into students(student_fname, student_lname, student_email,student_phone, years_of_exp, batch_date, source_of_joining,location)
values ('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 12, '2021-02-19', 'google', 'bangalore');

insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location) 
values('rahul', 'dravid','rahul@gmail.com', '9494949494', 8, 'walmart', '2021-02-19', 'quora','chennai' );

insert into students (student_fname, student_lname, student_email,student_phone, years_of_exp, student_company, batch_date,source_of_joining, location) 
values('kapil', 'dev','kapil@gmail.com', '9291292292', 15, 'microsoft', '2021-02-5','friend', 'pune' ),
('brian', 'lara', 'brian@gmail.com', '9291297292', 18, 'tcs','2021-02-05', 'youtube', 'pune' ),
('carl', 'hooper', 'carl@gmail.com', '9291297392', 20, 'wipro','2021-02-05', 'youtube', 'pune'),
('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 14,'wipro', '2021-02-19', 'google', 'chennai');

--  courses

create table courses(
course_id int not null,
course_name varchar(30) not null,
coourse_duration_months int not null,
course_fee int not null,
primary key(course_id)
);

describe courses;

-- Seed data
-- --------------------

insert into courses values(1, 'big data', 6, 50000);

insert into courses values(2, 'web development', 3, 20000);

insert into courses values(3, 'data science', 6, 40000);

insert into courses values(4, 'devops', 1, 10000);



