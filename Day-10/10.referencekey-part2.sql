-- time stamp
-- timestamp not null default current_timestamp
-- now() coyrrent timestamp

-- foreign key constraints

use batch12pm;
show tables;

select * from students;
select * from courses;
describe courses;
describe students;
insert into courses values(2, 'web development', 3, 20000);

insert into courses values(3, 'data science', 6, 40000);

insert into courses values(4, 'devops', 1, 10000);

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
selected_course int not null default 1,
years_of_exp int not null,
student_company varchar(30),
batch_date date not null,
source_of_joining varchar(30) not null,
location varchar(20) not null,
primary key(student_id),
unique key(student_email)
);

insert into students (student_fname, student_lname, student_email, student_phone, selected_course, 
years_of_exp, student_company, batch_date, source_of_joining, location) values 
('rohit', 'Sharma', 'rohit@gmail.com', '9191919191', 2, 6, 'walmart', '2021-02-05', 'linkedin', 'bangalore');

insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, student_company, batch_date, source_of_joining, location) 
values('virat', 'kohli', 'virat@gmail.com', '9292929292', 3, 'flipkart', '2021-02-05', 'linkedin', 'hyderabad' );

insert into students (student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, batch_date,
source_of_joining, location) 
values('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 3, 12,'2021-02-19', 'google', 'bangalore' ) ;

insert into students (student_fname, student_lname, student_email, student_phone, years_of_exp, student_company, batch_date,
source_of_joining, location) values 
('kapil', 'dev', 'kapil@gmail.com','9291292292', 15, 'microsoft', '2021-02-05', 'friend', 'pune' ),
('brian', 'lara', 'brian@gmail.com', '9291297292', 18, 'tcs', '2021-02-05', 'youtube', 'pune' ),
('carl', 'hooper', 'carl@gmail.com', '9291297392', 20, 'wipro', '2021-02-19', 'youtube', 'pune' ),
('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 14, 'wipro', '2021-02-19', 'google', 'chennai');

select * from students;


insert into students (student_fname, student_lname, student_email, student_phone, selected_course, 
years_of_exp, student_company, batch_date, source_of_joining, location) values 
('gautam', 'gambhir', 'gautam@gmail.com', '9191919191', 6, 6, 'walmart', '2021-02-05', 'linkedin', 'bangalore');

-- foreign key

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
selected_course int not null default 1,
years_of_exp int not null,
student_company varchar(30),
batch_date date not null,
source_of_joining varchar(30) not null,
location varchar(20) not null,
primary key(student_id),
unique key(student_email),
foreign key(selected_course) references courses(course_id)
);

describe students;


insert into students (student_fname, student_lname, student_email,
student_phone, selected_course, years_of_exp, student_company,
batch_date, source_of_joining, location) values('rohit', 'Sharma',
'rohit@gmail.com', '9191919191', 2, 6, 'walmart', '2021-02-05',
'linkedin', 'bangalore' );

insert into students (student_fname, student_lname, student_email,
student_phone, years_of_exp, student_company, batch_date,
source_of_joining, location) values('virat', 'kohli',
'virat@gmail.com', '9292929292', 3, 'flipkart', '2021-02-05',
'linkedin', 'hyderabad' );

insert into students (student_fname, student_lname, student_email,
student_phone, selected_course, years_of_exp, batch_date,
source_of_joining, location) values('shikhar', 'dhawan',
'shikhar@gmail.com', '9393939393', 3, 12,'2025-09-12', 'googlep',
'bangalore' ) ;

insert into students (student_fname, student_lname, student_email,
student_phone, years_of_exp, student_company, batch_date,
source_of_joining, location) values ('kapil', 'dev',
'kapil@gmail.com','9291292292', 15, 'microsoft', '2021-02-05',
'friend', 'pune' ),
('brian', 'lara', 'brian@gmail.com', '9291297292', 18, 'tcs',
'2021-02-05', 'youtube', 'pune' ),
('carl', 'hooper', 'carl@gmail.com', '9291297392', 20, 'wipro',
'2021-02-05', 'youtube', 'pune' ),
('saurabh', 'ganguly', 'saurabh@gmail.com', '9291297492', 14,
'wipro', '2021-02-05', 'google', 'chennai');


insert into students 
(student_fname, student_lname, student_email,student_phone, selected_course, years_of_exp, student_company,batch_date, source_of_joining, location) 
values
('jaspreet', 'bumrah','jaspreet@gmail.com', '9595959595', 5, 13, 'walmart', '2021-02-19','quora', 'chennai');

delete from courses where course_id = 3;

delete from courses where course_id = 4;


-- parent --- courses
-- child --- students

-- the foreign key constraint is used to prevent actions that would
-- destroy links between two tables ..

-- A foreign key is a field in one table that refers to the primary
-- key in another table.

-- selected_course is a foreign key in students table which refers
-- to course_id (primary key) in courses table.

-- the table with the foreign key is called the child table,
-- the table with primary key is called the parent or referenced
-- table.

-- NOT NULL default
-- UNIQUE KEY
-- PRIMARY KEY
-- FOREIGN KEY
















