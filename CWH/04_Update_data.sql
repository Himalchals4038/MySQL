create database users;
use users;
create table employee(
    id int primary key,
    name varchar(50) not null,
    email varchar(50) not null unique,
    gender enum('Male', 'Female', 'Other'),
    date_of_birth date not null,
    created_at timestamp default current_timestamp
);
insert into employee(id, name, email, gender, date_of_birth) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@example.com', 'Male', '1995-05-20'),
(2, 'Vivaan Singh', 'vivaan.singh@example.com', 'Male', '1992-11-30'),
(3, 'Aditya Kumar', 'aditya.kumar@example.com', 'Male', '1998-07-12'),
(4, 'Vihaan Gupta', 'vihaan.gupta@example.com', 'Other', '2000-01-15'),
(5, 'Ananya Reddy', 'ananya.reddy@example.com', 'Female', '1997-09-05'),
(6, 'Diya Patel', 'diya.patel@example.com', 'Female', '1999-03-22'),
(7, 'Ishaan Joshi', 'ishaan.joshi@example.com', 'Male', '1994-08-18'),
(8, 'Priya Mehta', 'priya.mehta@example.com', 'Female', '2001-02-25'),
(9, 'Rohan Desai', 'rohan.desai@example.com', 'Male', '1996-06-10'),
(10, 'Saanvi Shah', 'saanvi.shah@example.com', 'Female', '1993-12-01');
select * from employee;
alter table employee add column salary int default NULL;
update employee set salary=50000 where id=1;
update employee set salary=60000 where id=2;
update employee set salary=55000 where id=3;
update employee set salary=52000 where id=4;
update employee set salary=58000 where id=5;
update employee set salary=59000 where id=6;
update employee set salary=61000 where id=7;
update employee set salary=62000 where id=8;
update employee set salary=63000 where id=9;
update employee set salary=64000 where id=10;
update employee set salary=salary+10000 where salary<60000;
select * from employee;
drop table employee;