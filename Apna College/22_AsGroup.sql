create database salary;
use salary;
CREATE TABLE employees (
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
SELECT * FROM employees;
-- Query to calculate the total salary for each department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
-- Query to find the highest and lowest salary in each department
SELECT department, MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;
-- Query to calculate the average salary for each department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
drop table employees;
drop database salary;