create database student;
use student;
CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age TINYINT UNSIGNED NOT NULL,
    gender ENUM('male', 'female', 'other') NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    attendance_percent DECIMAL(5,2),
    english TINYINT UNSIGNED DEFAULT 0,
    physics TINYINT UNSIGNED DEFAULT 0,
    chemistry TINYINT UNSIGNED DEFAULT 0,
    maths TINYINT UNSIGNED DEFAULT 0,
    biology TINYINT UNSIGNED DEFAULT 0,
    computer_science TINYINT UNSIGNED DEFAULT 0,
    
    average_marks DECIMAL(5,2) GENERATED ALWAYS AS ((english + physics + chemistry + maths + biology + computer_science) / 6.0) STORED,
    overall_percentage DECIMAL(5,2) GENERATED ALWAYS AS ((english + physics + chemistry + maths + biology + computer_science) / 6.0) STORED,
    grade VARCHAR(4) GENERATED ALWAYS AS (
        CASE
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 90 THEN 'Ex'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 80 THEN 'A'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 70 THEN 'B'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 60 THEN 'C'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 50 THEN 'D'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 40 THEN 'E'
            WHEN ((english + physics + chemistry + maths + biology + computer_science) / 6.0) >= 35 THEN 'P'
            ELSE 'Fail'
        END
    ) STORED,
    INDEX idx_overall_percentage (overall_percentage DESC)
);

INSERT INTO student (name, age, gender, email, attendance_percent, english, physics, chemistry, maths, biology, computer_science) VALUES
('Mrinalini', 23, 'female', 'mrinal@college.com', 85, 88, 92, 85, 95, 89, 94),
('Souharda', 21, 'male', 'souhardo@college.com', 78, 75, 80, 72, 88, 79, 85),
('Rahul', 22, 'male', 'rahul@college.com', 92, 91, 88, 89, 94, 90, 96),
('Aditi', 20, 'female', 'aditi@college.com', 88, 85, 87, 82, 91, 86, 88),
('Karan', 22, 'male', 'karan@college.com', 65, 55, 60, 58, 62, 59, 65),
('Neha', 21, 'female', 'neha@college.com', 95, 94, 96, 92, 98, 95, 97),
('Rohan', 23, 'male', 'rohan@college.com', 72, 65, 68, 62, 70, 66, 75),
('Priya', 20, 'female', 'priya@college.com', 80, 78, 82, 79, 85, 81, 86),
('Amit', 21, 'male', 'amit@college.com', 90, 89, 85, 90, 92, 88, 91),
('Sneha', 22, 'female', 'sneha@college.com', 75, 70, 72, 68, 75, 71, 78),
('Vikas', 23, 'male', 'vikas@college.com', 82, 81, 79, 84, 88, 82, 85),
('Pooja', 21, 'female', 'pooja@college.com', 98, 96, 98, 95, 99, 97, 98),
('Manish', 20, 'male', 'manish@college.com', 60, 45, 50, 48, 55, 52, 60),
('Kavita', 22, 'female', 'kavita@college.com', 86, 84, 86, 81, 89, 85, 90),
('Deepak', 21, 'male', 'deepak@college.com', 77, 74, 76, 71, 80, 75, 82),
('Anjali', 20, 'female', 'anjali@college.com', 91, 90, 88, 92, 95, 91, 94),
('Suresh', 23, 'male', 'suresh@college.com', 68, 58, 62, 55, 65, 60, 68),
('Ritu', 21, 'female', 'ritu@college.com', 84, 82, 85, 80, 87, 83, 89),
('Ajay', 22, 'male', 'ajay@college.com', 94, 92, 90, 95, 96, 94, 95),
('Simran', 20, 'female', 'simran@college.com', 70, 62, 65, 60, 68, 64, 72),
('Gaurav', 21, 'male', 'gaurav@college.com', 81, 79, 81, 77, 84, 80, 86),
('Nisha', 22, 'female', 'nisha@college.com', 89, 87, 89, 85, 92, 88, 93),
('Sachin', 23, 'male', 'sachin@college.com', 62, 48, 52, 45, 58, 50, 62),
('Megha', 20, 'female', 'megha@college.com', 96, 95, 93, 97, 98, 96, 97),
('Vijay', 21, 'male', 'vijay@college.com', 79, 76, 78, 74, 82, 78, 84),
('Aarti', 22, 'female', 'aarti@college.com', 87, 85, 88, 83, 90, 86, 91),
('Rajesh', 23, 'male', 'rajesh@college.com', 93, 90, 92, 88, 95, 92, 96),
('Kiran', 20, 'female', 'kiran@college.com', 74, 68, 70, 65, 72, 69, 76),
('Sunil', 21, 'male', 'sunil@college.com', 83, 80, 83, 78, 86, 82, 88),
('Divya', 22, 'female', 'divya@college.com', 97, 95, 97, 94, 99, 96, 98),
('Anil', 23, 'male', 'anil@college.com', 66, 52, 56, 50, 60, 54, 65),
('Swati', 20, 'female', 'swati@college.com', 88, 86, 89, 84, 91, 87, 92),
('Prakash', 21, 'male', 'prakash@college.com', 76, 72, 75, 70, 78, 74, 80),
('Jyoti', 22, 'female', 'jyoti@college.com', 90, 88, 86, 91, 93, 89, 94),
('Dinesh', 23, 'male', 'dinesh@college.com', 69, 60, 64, 58, 68, 62, 70),
('Renu', 20, 'female', 'renu@college.com', 85, 83, 86, 81, 88, 84, 90),
('Nitin', 21, 'male', 'nitin@college.com', 95, 93, 91, 96, 97, 95, 96),
('Asha', 22, 'female', 'asha@college.com', 71, 64, 66, 61, 70, 65, 74),
('Tarun', 23, 'male', 'tarun@college.com', 80, 77, 80, 75, 83, 79, 85),
('Seema', 20, 'female', 'seema@college.com', 92, 89, 91, 87, 94, 90, 95);

CREATE VIEW student_dashboard AS
SELECT 
    *,
    RANK() OVER (ORDER BY overall_percentage DESC) AS class_rank
FROM student;

SELECT * FROM student_dashboard;