create database company;
use company;
create table employee(
    id int primary key,
    name varchar(50),
    age int not null,
    salary int not null,
    department varchar(50)
);
insert into employee(id, name, age, salary, department) VALUES
(1, 'Mayank', 22, 50000, 'IT'),
(2, 'Barun', 25, 60000, 'HR'),
(3, 'Vishal', 28, 70000, 'Dev'),
(4, 'Shivani', 30, 80000, 'Server'),
(5, 'Neha', 32, 90000, 'Management'),
(6, 'Amit', 35, 100000, 'IT'),
(7, 'Rahul', 38, 110000, 'HR'),
(8, 'Rohit', 40, 120000, 'Dev'),
(9, 'Varun', 42, 130000, 'Server'),
(10, 'Amrit', 45, 140000, 'Management');
select* from employee;
update employee set age=26 where name='Barun';
update employee set department='HR' where name='Vishal';
update employee set salary=100000 where name='Shivani';
update employee set age=27 where name='Neha';
update employee set salary=salary+10000 where department='IT';
select* from employee;
drop table employee;
drop database company;