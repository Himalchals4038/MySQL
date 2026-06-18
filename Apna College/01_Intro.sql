create database student;
use student;
CREATE TABLE IF NOT EXISTS student_info (
    roll_no INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT
);
INSERT INTO student_info (roll_no, name, department) 
VALUES (1, 'Alice', 'Mining');
select * from student_info;
drop database student;