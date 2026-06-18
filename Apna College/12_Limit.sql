create database college;
use college;
create table professor(
    serial int auto_increment unique,
    name varchar(50) not null,
    id int primary key not null,
    department varchar(50) not null,
    rating float not null
);
insert into professor(name, id, department, rating) VALUES
('Mayank', 18, 'Computer Science', 4.8),
('Barun', 6, 'Electronics', 4.5),
('Vishal', 9, 'Mechanical', 4.9),
('Shivani', 7, 'Chemistry', 4.7),
('Neha', 2, 'Physics', 4.6),
('Amit', 1, 'Maths', 4.8),
('Rahul', 5, 'Biology', 4.9),
('Rohit', 4, 'Chemistry', 3.7);
select* from professor;
create table resident(
    serial int auto_increment unique,
    name varchar(50) not null,
    id int primary key not null,
    age int unsigned not null,
    gender varchar(50) not null check(gender='Male' or gender='Female'),
    address varchar(50) not null unique,
    foreign key(id) references professor(id)
);
insert into resident(name, id, age, gender, address) VALUES
('Shivani', 7, 24, 'Female', 'Pune 1'),
('Neha', 2, 23, 'Female', 'Pune 2'),
('Amit', 1, 22, 'Male', 'Pune 3'),
('Rahul', 5, 21, 'Male', 'Pune 4'),
('Rohit', 4, 20, 'Male', 'Pune 5'),
('Mayank', 18, 19, 'Male', 'Pune 6'),
('Barun', 6, 18, 'Male', 'Pune 7'),
('Vishal', 9, 17, 'Male', 'Pune 8');
select* from resident;

select * from professor where rating not between 4.5 and 4.8 limit 3;
select * from professor where rating not between 4.5 and 4.8 order by department desc limit 4;
drop table resident;
drop table professor;
drop database college;