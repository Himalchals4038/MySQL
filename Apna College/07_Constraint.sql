create database student_data;
use student_data;
create table temp1(
    id int primary key,
    city varchar(50),
    age int unsigned not null,
    constraint age_check check (age>=18 and city='Gurgaon')
);
create table temp2(
    age int check (age>=18 and age<=35)
);
drop table temp1;
drop table temp2;
drop database student_data;