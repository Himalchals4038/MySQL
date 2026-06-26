create database users;
use users;
create table resident(
    id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(50) not null unique,
    password varchar(50) not null unique,
    phone_number bigint not null,
    due float not null,
    created_at timestamp default current_timestamp
);
INSERT INTO resident (name, email, password, phone_number, due) VALUES
('Rohan Mehra', 'rohan.mehra@example.com', 'pass123', 9876543210, 100.50),
('Priya Sharma', 'priya.sharma@example.com', 'securepass', 9876543211, 75.25),
('Amit Singh', 'amit.singh@example.com', 'amit@123', 9876543212, 50.00),
('Sneha Patel', 'sneha.patel@example.com', 'sneha_pass', 9876543213, 200.75),
('Vikram Kumar', 'vikram.kumar@example.com', 'vikram!pass', 9876543214, 150.25),
('Anjali Gupta', 'anjali.gupta@example.com', 'anjali#123', 9876543215, 100.50),
('Rajesh Verma', 'rajesh.verma@example.com', 'rajesh_v', 9876543216, 75.25),
('Kavita Reddy', 'kavita.reddy@example.com', 'kavita@reddy', 9876543217, 50.00),
('Suresh Desai', 'suresh.desai@example.com', 'suresh$d', 9876543218, 200.75),
('Deepika Joshi', 'deepika.joshi@example.com', 'deepika123', 9876543219, 150.25),    
('Manoj Tiwari', 'manoj.tiwari@example.com', 'manojpass', 9876543220, 100.50);
select * from resident;
SELECT name, due, CASE WHEN due > 100 THEN 'High' ELSE 'Low' END AS due_status FROM resident;
select name, due, if (due>100, 'High', 'Low') as due_status from resident;
drop table resident;