-- Switch to our main database
use db_main;

/* 
    Creating a demonstration table that uses 
    various common MySQL data types 
*/
create table datatype(
    id int primary key auto_increment,
    username char(255),
    email varchar(255) unique,
    is_active boolean,
    roll tinyint unsigned not null unique,
    gender enum('male', 'female', 'other'),
    age tinyint unsigned not null,
    height decimal(5,2) not null,
    weight float unsigned not null,
    address text default 'Ahmedabad',
    phone bigint unsigned not null,
    dob date,
    yob year,
    created_at timestamp
);

# Insert sample records into the datatype table
insert into datatype(username, email, is_active, roll, gender, age, height, weight, address, phone, dob, yob, created_at) VALUES
('Shivani', 'shivani@college.com', true, 1, 'female', 24, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Neha', 'neha@college.com', true, 2, 'female', 23, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Amit', 'amit@college.com', true, 3, 'male', 22, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Rahul', 'rahul@college.com', true, 4, 'male', 21, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Rohit', 'rohit@college.com', true, 5, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Nayan', 'nayan@college.com', true, 6, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Bitan', 'bitan@college.com', true, 7, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Yash', 'yash@college.com', true, 8, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Ankit', 'ankit@college.com', true, 9, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00'),
('Ravi', 'ravi@college.com', true, 10, 'male', 20, 5.5, 55.5, 'Pune', 1234567890, '1999-01-01', 1999, '2023-01-01 00:00:00');

-- Fetch all data to verify the insertion
select * from datatype;

-- Clean up by dropping the table
drop table datatype;