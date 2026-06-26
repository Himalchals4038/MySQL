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
('Anjali Gupta', 'anjali.gupta@example.com', 'anjali#123', 9, 95, 9876543215, 'Female'),
('Rajesh Verma', 'rajesh.verma@example.com', 'rajesh_v', 12, 68, 9876543216, 'Male'),
('Kavita Reddy', 'kavita.reddy@example.com', 'kavita@reddy', 10, 82, 9876543217, 'Female'),
('Suresh Desai', 'suresh.desai@example.com', 'suresh$d', 11, 79, 9876543218, 'Male'),
('Deepika Joshi', 'deepika.joshi@example.com', 'deepika123', 9, 91, 9876543219, 'Female'),
('Manoj Tiwari', 'manoj.tiwari@example.com', 'manojpass', 12, 72, 9876543220, 'Male'),
('Sunita Rao', 'sunita.rao@example.com', 'sunita@456', 10, 89, 9876543221, 'Female'),
('Arun Pillai', 'arun.pillai@example.com', 'arun_pillai', 11, 65, 9876543222, 'Male'),
('Geeta Iyer', 'geeta.iyer@example.com', 'geeta!iyer', 9, 94, 9876543223, 'Female'),
('Harish Nair', 'harish.nair@example.com', 'harish_n', 12, 71, 9876543224, 'Male'),
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
select count(*) from student;
select count(*) from student where grade>10;
select id, name, now() as time, year(now()) as year, month(now()) as month, day(now()) as day from student;
select * from student;
drop table student;