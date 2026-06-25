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
(10, 'Saanvi Shah', 'saanvi.shah@example.com', 'Female', '1993-12-01'),
(11, 'Aanya Singh', 'aanya.singh@example.com', 'Female', '1998-08-12'),
(12, 'Arjun Verma', 'arjun.verma@example.com', 'Male', '1991-04-25'),
(13, 'Ira Patil', 'ira.patil@example.com', 'Female', '2002-06-18'),
(14, 'Kabir Yadav', 'kabir.yadav@example.com', 'Male', '1995-09-03'),
(15, 'Myra Kumar', 'myra.kumar@example.com', 'Female', '1997-02-14'),
(16, 'Reyansh Sharma', 'reyansh.sharma@example.com', 'Male', '1993-11-28'),
(17, 'Sia Gupta', 'sia.gupta@example.com', 'Other', '2000-07-21'),
(18, 'Zayn Khan', 'zayn.khan@example.com', 'Male', '1996-01-09'),
(19, 'Advika Reddy', 'advika.reddy@example.com', 'Female', '1999-05-30'),
(20, 'Aryan Patel', 'aryan.patel@example.com', 'Male', '1992-10-11'),
(21, 'Kiara Joshi', 'kiara.joshi@example.com', 'Female', '2003-03-08'),
(22, 'Neel Mehta', 'neel.mehta@example.com', 'Male', '1994-07-19'),
(23, 'Pari Desai', 'pari.desai@example.com', 'Female', '1998-12-24'),
(24, 'Rudra Shah', 'rudra.shah@example.com', 'Other', '1990-02-17'),
(25, 'Tara Singh', 'tara.singh@example.com', 'Female', '2001-08-02'),
(26, 'Ayaan Verma', 'ayaan.verma@example.com', 'Male', '1997-04-16'),
(27, 'Diya Patil', 'diya.patil@example.com', 'Female', '1996-10-07'),
(28, 'Krish Yadav', 'krish.yadav@example.com', 'Male', '1992-03-23'),
(29, 'Anika Kumar', 'anika.kumar@example.com', 'Female', '1995-01-27'),
(30, 'Sai Sharma', 'sai.sharma@example.com', 'Male', '2000-11-04'),
(31, 'Zara Gupta', 'zara.gupta@example.com', 'Female', '1994-06-01'),
(32, 'Yuvan Khan', 'yuvan.khan@example.com', 'Male', '1999-09-13'),
(33, 'Shanaya Reddy', 'shanaya.reddy@example.com', 'Female', '1991-07-06'),
(34, 'Atharv Patel', 'atharv.patel@example.com', 'Male', '2002-12-31'),
(35, 'Navya Joshi', 'navya.joshi@example.com', 'Female', '1993-05-26');
select * from employee;
select * from employee where gender='Male';
select * from employee where gender<>'Male';
select * from employee where date_of_birth between '1995-01-01' and '1999-12-31';
select * from employee where gender!='Other';
select name, email from employee where gender in ('Male', 'Other');
select * from employee;
drop table employee;