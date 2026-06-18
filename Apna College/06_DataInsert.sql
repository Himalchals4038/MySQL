create database student_data;
use student_data;
create table temp1(
    sl int auto_increment,
    name varchar(50) default 'Admin',
    roll int not null default 1919191919,
    phone bigint not null default 1234567890,
    primary key(roll, name)
);
create table temp2{
    intern_id int,
    foreign key(intern_id) references temp1(roll)
};
drop table temp1;
drop table temp2;
drop database student_data;