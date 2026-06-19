create database school;
use school;
create table student(
    id int primary key,
    name varchar(50),
    age int not null,
    department varchar(50)
);
insert into student(id, name, age, department) VALUES
(1, 'Mayank', 22, 'IT'),
(2, 'Barun', 25, 'HR'),
(3, 'Vishal', 28, 'Dev'),
(4, 'Shivani', 30, 'Server'),
(5, 'Neha', 32, 'Management'),
(6, 'Amit', 35, 'IT'),
(7, 'Rahul', 38, 'HR'),
(8, 'Rohit', 40, 'Dev'),
(9, 'Varun', 42, 'Server'),
(10, 'Amrit', 45, 'Management');
select* from student;
drop table student;
alter table student add column email varchar(50);
alter table student modify column email varchar(50) unique;
alter table student rename column email to email_id;
alter table student change column email_id address_perm varchar(250) not null;
alter table student drop column email_id;
alter table student rename to student_info;
select* from student_info;
drop table student_info;
drop database school;