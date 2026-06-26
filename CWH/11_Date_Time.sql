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
    date_of_birth date not null,
    created_at timestamp default current_timestamp
);
INSERT INTO student (name, email, password, grade, marks, phone_number, gender, date_of_birth) VALUES
('Rohan Mehra', 'rohan.mehra@example.com', 'pass123', 10, 85, 9876543210, 'Male', '2007-05-10'),
('Priya Sharma', 'priya.sharma@example.com', 'securepass', 11, 92, 9876543211, 'Female', '2006-08-22'),
('Amit Singh', 'amit.singh@example.com', 'amit@123', 12, 78, 9876543212, 'Male', '2005-03-15'),
('Sneha Patel', 'sneha.patel@example.com', 'sneha_pass', 10, 88, 9876543213, 'Female', '2007-11-30'),
('Vikram Kumar', 'vikram.kumar@example.com', 'vikram!pass', 11, 75, 9876543214, 'Male', '2006-04-18'),
('Anjali Gupta', 'anjali.gupta@example.com', 'anjali#123', 9, 95, 9876543215, 'Female', '2008-09-05'),
('Rajesh Verma', 'rajesh.verma@example.com', 'rajesh_v', 12, 68, 9876543216, 'Male', '2005-02-25'),
('Kavita Reddy', 'kavita.reddy@example.com', 'kavita@reddy', 10, 82, 9876543217, 'Female', '2007-06-10'),
('Suresh Desai', 'suresh.desai@example.com', 'suresh$d', 11, 79, 9876543218, 'Male', '2006-12-01'),
('Deepika Joshi', 'deepika.joshi@example.com', 'deepika123', 9, 91, 9876543219, 'Female', '2008-08-12'),
('Manoj Tiwari', 'manoj.tiwari@example.com', 'manojpass', 12, 72, 9876543220, 'Male', '2005-04-25'),
('Sunita Rao', 'sunita.rao@example.com', 'sunita@456', 10, 89, 9876543221, 'Female', '2007-06-18'),
('Arun Pillai', 'arun.pillai@example.com', 'arun_pillai', 11, 65, 9876543222, 'Male', '2006-09-03'),
('Geeta Iyer', 'geeta.iyer@example.com', 'geeta!iyer', 9, 94, 9876543223, 'Female', '2008-02-14'),
('Harish Nair', 'harish.nair@example.com', 'harish_n', 12, 71, 9876543224, 'Male', '2005-11-28'),
('Leela Menon', 'leela.menon@example.com', 'leela@menon', 10, 84, 9876543225, 'Female', '2007-07-21'),
('Nitin Bhat', 'nitin.bhat@example.com', 'nitin$bhat', 11, 77, 9876543226, 'Male', '2006-01-09'),
('Pooja Hegde', 'pooja.hegde@example.com', 'pooja_h', 9, 96, 9876543227, 'Female', '2008-05-30'),
('Ravi Chandra', 'ravi.chandra@example.com', 'ravi@chandra', 12, 70, 9876543228, 'Male', '2005-10-11'),
('Shanti Kumar', 'shanti.kumar@example.com', 'shanti123', 10, 81, 9876543229, 'Female', '2007-03-08'),
('Usha Yadav', 'usha.yadav@example.com', 'usha_yadav', 11, 73, 9876543230, 'Female', '2006-07-19'),
('Vinod Khanna', 'vinod.khanna@example.com', 'vinod@khanna', 9, 97, 9876543231, 'Male', '2008-12-24'),
('Yash Chopra', 'yash.chopra@example.com', 'yash_chopra', 12, 69, 9876543232, 'Male', '2005-02-17'),
('Zoya Akhtar', 'zoya.akhtar@example.com', 'zoya@akhtar', 10, 86, 9876543233, 'Female', '2007-08-02'),
('Abhay Deol', 'abhay.deol@example.com', 'abhay_deol', 11, 76, 9876543234, 'Male', '2006-04-16');
select * from student;
select id, name, date_of_birth, day(date_of_birth), month(date_of_birth), year(date_of_birth) from student;
select name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) as age from student;
select name, datediff(curdate(), date_of_birth) as days from student;
select * from student;
drop table student;