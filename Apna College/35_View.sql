create database register;
use register;
create table boarders(
    rollno int not null primary key,
    name varchar(255) not null,
    branch varchar(255) not null,
    year int not null,
    contactno bigint not null,
    marks int,
    city varchar(255) not null
);
insert into boarders (rollno, name, branch, year, contactno, marks, city) values
(1, 'Alice', 'CS', 2, 1234567890, 85, 'New York'),
(2, 'Bob', 'EE', 3, 9876543210, 90, 'Los Angeles'),
(3, 'Charlie', 'ME', 4, 1122334455, 78, 'Chicago'),
(4, 'David', 'CE', 2, 6655443322, 88, 'Houston'),
(5, 'Eve', 'IT', 3, 1111222233, 80, 'Phoenix'),
(6, 'Frank', 'EC', 4, 9999888877, 92, 'Philadelphia'),
(7, 'Grace', 'CS', 2, 1010101010, 85, 'San Francisco'),
(8, 'Hank', 'EE', 3, 9999999999, 90, 'San Francisco'),
(9, 'Ivy', 'ME', 4, 1234567890, 78, 'Dallas'),
(10, 'Jack', 'CE', 2, 9876543210, 88, 'San Francisco'),
(11, 'Kate', 'IT', 3, 1122334455, 80, 'Seattle'),
(12, 'Liam', 'EC', 4, 6655443322, 92, 'San Francisco');
select * from boarders;
create view v1 as select rollno, name, branch, year, contactno, marks, city from boarders where year = 3;
select * from v1;
drop view v1;
drop table boarders;
drop database register;
