create database users;
use users;
create table student(
    id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(50) not null unique,
    password varchar(50) not null unique,
    grade tinyint not null,
    marks tinyint not null,
    phone_number bigint not null,
    gender enum('Male', 'Female', 'Other') not null,
    created_at timestamp default current_timestamp
);
INSERT INTO student (name, email, password, grade, marks, phone_number, gender) VALUES
('Rohan Mehra', 'rohan.mehra@example.com', 'pass123', 10, 85, 9876543210, 'Male'),
('Priya Sharma', 'priya.sharma@example.com', 'securepass', 11, 92, 9876543211, 'Female'),
('Amit Singh', 'amit.singh@example.com', 'amit@123', 12, 78, 9876543212, 'Male'),
('Sneha Patel', 'sneha.patel@example.com', 'sneha_pass', 10, 88, 9876543213, 'Female'),
('Vikram Kumar', 'vikram.kumar@example.com', 'vikram!pass', 11, 75, 9876543214, 'Male'),
('Leela Menon', 'leela.menon@example.com', 'leela@menon', 10, 84, 9876543225, 'Female'),
('Nitin Bhat', 'nitin.bhat@example.com', 'nitin$bhat', 11, 77, 9876543226, 'Male'),
('Pooja Hegde', 'pooja.hegde@example.com', 'pooja_h', 9, 96, 9876543227, 'Female'),
('Ravi Chandra', 'ravi.chandra@example.com', 'ravi@chandra', 12, 70, 9876543228, 'Male'),
('Shanti Kumar', 'shanti.kumar@example.com', 'shanti123', 10, 81, 9876543229, 'Female'),
('Usha Yadav', 'usha.yadav@example.com', 'usha_yadav', 11, 73, 9876543230, 'Female'),
('Vinod Khanna', 'vinod.khanna@example.com', 'vinod@khanna', 9, 97, 9876543231, 'Male'),
('Yash Chopra', 'yash.chopra@example.com', 'yash_chopra', 12, 69, 9876543232, 'Male'),
('Zoya Akhtar', 'zoya.akhtar@example.com', 'zoya@akhtar', 10, 86, 9876543233, 'Female'),
('Abhay Deol', 'abhay.deol@example.com', 'abhay_deol', 11, 76, 9876543234, 'Male');
select * from student;
create table hostel(
    id int primary key auto_increment,
    user_id int not null,
    name varchar(50) not null,
    email varchar(50) not null,
    password varchar(50) not null,
    room_no int not null,
    constraint fk_user foreign key(user_id) references student(id) on delete cascade
);
INSERT INTO hostel (id, user_id, name, email, password, room_no) VALUES
(1, 1, 'Rohan Mehra', 'rohan.mehra@example.com', 'pass123', 101),
(2, 3, 'Amit Singh', 'amit.singh@example.com', 'amit@123', 102),
(3, 5, 'Vikram Kumar', 'vikram.kumar@example.com', 'vikram!pass', 201),
(4, 2, 'Priya Sharma', 'priya.sharma@example.com', 'securepass', 202),
(5, 4, 'Sneha Patel', 'sneha.patel@example.com', 'sneha_pass', 301);
select * from hostel;
delete from student where id = 2;
select * from student;
select * from hostel;
drop table student;
drop table hostel;
