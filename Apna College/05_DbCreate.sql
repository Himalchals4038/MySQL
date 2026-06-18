create database if not exists db_check1;
use db_check1;
create table if not exists table1(
    id int primary key auto_increment,
    name varchar(30),
    age int not null,
    address varchar(255),
    phone bigint
);
insert into table1(name, age, address, phone) VALUES
('Shivani', 24, 'Pune', 1234567890),
('Neha', 26, 'Surat', 1234567890),
('Amit', 21, 'Mewar', 1234567890),
('Rahul', 29, 'Jammu', 1234567890),
('Rohit', 19, 'Trivandrum', 1234567890);
select * from table1;
drop database if exists db_check1;