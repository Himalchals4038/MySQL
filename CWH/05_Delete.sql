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
delete from employee where id=4;
insert into employee(id, name, email, gender, date_of_birth) VALUES (4, 'Vihaan Gupta', 'vihaan.gupta@example.com', 'Other', '2000-01-15');
select * from employee;
drop table employee;