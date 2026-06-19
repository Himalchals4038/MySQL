create database salary;
use salary;
CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'HR', 50000.00),
(2, 'Jane Smith', 'Finance', 60000.00),
(3, 'Mike Johnson', 'IT', 70000.00),
(4, 'Emily Davis', 'HR', 55000.00),
(5, 'Robert Brown', 'Finance', 65000.00),
(6, 'Sarah Wilson', 'IT', 75000.00),
(7, 'David Taylor', 'HR', 52000.00),
(8, 'Laura Anderson', 'Finance', 62000.00),
(9, 'Michael Martinez', 'IT', 72000.00),
(10, 'Emily Hernandez', 'HR', 58000.00),
(11, 'Robert Lee', 'Finance', 68000.00),
(12, 'Sarah Davis', 'IT', 78000.00),
(13, 'David Wilson', 'HR', 54000.00),
(14, 'Laura Martinez', 'Finance', 64000.00),
(15, 'Michael Davis', 'IT', 74000.00);
select * from employees;
CREATE TABLE departments(
    department VARCHAR(50) PRIMARY KEY,
    manager_name VARCHAR(50) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL
);
INSERT INTO departments(department, manager_name, budget) VALUES
('HR', 'Asha Verma', 100000.00),
('IT', 'Priya Shah', 150000.00),
('Marketing', 'Nisha Rao', 90000.00);
select * from departments;
select e.id, e.name, e.salary, d.manager_name, d.budget
from employees e
left join departments d on e.department = d.department
union
select e.id, e.name, e.salary, d.manager_name, d.budget
from employees e
right join departments d on e.department = d.department;
drop table departments;
drop table employees;
drop database salary;