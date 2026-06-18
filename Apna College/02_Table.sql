use db_main;
create table student(
    id int primary key,
    name varchar(20),
    age int not null
);
insert into student(id, name, age) VALUES
(1, 'Shivani', 24),
(2, 'Neha', 23),
(3, 'Amit', 22),
(4, 'Rahul', 21),
(5, 'Rohit', 20);
select * from student;
drop table student;
