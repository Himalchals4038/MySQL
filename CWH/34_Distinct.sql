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
('Ravi Chandra', 'ravi.chandra@example.com', 12, 4, 'Other'),
('Shanti Kumar', 'shanti.kumar@example.com', 10, 5, 'Female'),
('Usha Yadav', 'usha.yadav@example.com', 11, 1, 'Female'),
('Vinod Khanna', 'vinod.khanna@example.com', 9, 2, 'Male'),
('Yash Chopra', 'yash.chopra@example.com', 12, 3, 'Male'),
('Zoya Akhtar', 'zoya.akhtar@example.com', 10, 4, 'Female'),
('Abhay Deol', 'abhay.deol@example.com', 11, 5, 'Male'),
('Kareena Kapoor', 'kareena.kapoor@example.com', 9, 6, 'Other'),
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
select distinct grade from student;
select distinct gender from student;
drop table student;