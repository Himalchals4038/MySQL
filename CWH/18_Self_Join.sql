create database users;
use users;
create table student(
    id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(50) not null unique,
    grade tinyint not null,    
    teacher_id int,
    gender enum('Male', 'Female', 'Other') not null
);
INSERT INTO student (name, email, grade, teacher_id, gender) VALUES
('Rohan Mehra', 'rohan.mehra@example.com', 10, 1, 'Male'),
('Priya Sharma', 'priya.sharma@example.com', 11, 2, 'Female'),
('Amit Singh', 'amit.singh@example.com', 12, 3, 'Male'),
('Sneha Patel', 'sneha.patel@example.com', 10, 4, 'Female'),
('Vikram Kumar', 'vikram.kumar@example.com', 11, 5, 'Male'),
('Leela Menon', 'leela.menon@example.com', 10, 1, 'Female'),
('Nitin Bhat', 'nitin.bhat@example.com', 11, 2, 'Male'),
('Pooja Hegde', 'pooja.hegde@example.com', 9, 3, 'Female'),
('Ravi Chandra', 'ravi.chandra@example.com', 12, 4, 'Male'),
('Shanti Kumar', 'shanti.kumar@example.com', 10, 5, 'Female'),
('Usha Yadav', 'usha.yadav@example.com', 11, 1, 'Female'),
('Vinod Khanna', 'vinod.khanna@example.com', 9, 2, 'Male'),
('Yash Chopra', 'yash.chopra@example.com', 12, 3, 'Male'),
('Zoya Akhtar', 'zoya.akhtar@example.com', 10, 4, 'Female'),
('Abhay Deol', 'abhay.deol@example.com', 11, 5, 'Male'),
('Kareena Kapoor', 'kareena.kapoor@example.com', 9, 6, 'Female'),
('Shahid Kapoor', 'shahid.kapoor@example.com', 10, 7, 'Male'),
('Alia Bhatt', 'alia.bhatt@example.com', 11, 8, 'Female'),
('Ranbir Kapoor', 'ranbir.kapoor@example.com', 12, 9, 'Male'),
('Deepika Padukone', 'deepika.padukone@example.com', 9, 10, 'Female'),
('Ranveer Singh', 'ranveer.singh@example.com', 10, 6, 'Male'),
('Priyanka Chopra', 'priyanka.chopra@example.com', 11, 7, 'Female'),
('Hrithik Roshan', 'hrithik.roshan@example.com', 12, 8, 'Male'),
('Katrina Kaif', 'katrina.kaif@example.com', 9, 9, 'Female'),
('Salman Khan', 'salman.khan@example.com', 10, 10, 'Male');
select * from student;
create table teacher(
    id int primary key unique not null,
    name varchar(50) not null,
    email varchar(50) not null unique,
    gender enum('Male', 'Female', 'Other') not null
);
insert into teacher(id, name, email, gender) values
(1, 'Mr. Sharma', 'sharma@example.com', 'Male'),
(2, 'Ms. Gupta', 'gupta@example.com', 'Female'),
(3, 'Mr. Khan', 'khan@example.com', 'Male'),
(4, 'Mrs. Reddy', 'reddy@example.com', 'Female'),
(5, 'Mr. Patel', 'patel@example.com', 'Male'),
(11, 'Mr. Jones', 'jones@example.com', 'Male'),
(12, 'Ms. Williams', 'williams@example.com', 'Female'),
(13, 'Mr. Brown', 'brown@example.com', 'Male');
select * from teacher;

--Inner Join
select s.name as student_name, s.email as student_email, s.grade as student_grade, t.name as teacher_name, t.email as teacher_email from student s
inner join teacher t on s.teacher_id = t.id;

--Left Join
select s.name, s.email, s.grade, t.name, t.email
from student s
left join teacher t on s.teacher_id = t.id;

--Right Join
select s.name, s.email, s.grade, t.name, t.email
from student s
right join teacher t on s.teacher_id = t.id;

--Left Exclusive Join
select s.name, s.email, s.grade, t.name, t.email
from student s
left join teacher t on s.teacher_id = t.id
where t.id is null;

--Right Exclusive Join
select s.name, s.email, s.grade, t.name, t.email
from student s
right join teacher t on s.teacher_id = t.id
where s.teacher_id is null;

--Full Join
select s.name, s.email, s.grade, t.name, t.email
from student s
inner join teacher t on s.teacher_id = t.id
union
select s.name, s.email, s.grade, t.name, t.email
from student s
left join teacher t on s.teacher_id = t.id;

--Exclusive Union
select s.name, s.email, s.grade, t.name, t.email
from student s
left join teacher t on s.teacher_id = t.id
where t.id is null
union
select s.name, s.email, s.grade, t.name, t.email
from student s
right join teacher t on s.teacher_id = t.id
where s.teacher_id is null;

--Self Join
select s1.name as student1, s2.name as student2, s1.teacher_id
from student s1
join student s2 on s1.teacher_id = s2.teacher_id and s1.id <> s2.id;
drop table teacher;
drop table student;
drop table teacher;