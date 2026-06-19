create database society;
use society;
CREATE TABLE Members(
    MemberID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(100),
    Email varchar(100),
    Phone varchar(15)
);
CREATE TABLE Meetings(
    MeetingID int AUTO_INCREMENT PRIMARY KEY,
    Title varchar(100),
    Date date,
    Time time,
    Location varchar(100)
);
CREATE TABLE Attendance(
    AttendanceID int AUTO_INCREMENT PRIMARY KEY,
    MemberID int,
    MeetingID int,
    Status varchar(20),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID)
);
insert into Members(Name, Email, Phone) VALUES
('Amit', 'a@b.com', '1234567890'),
('Rahul', 'r@b.com', '1234567891'),
('Rohit', 'r@b.com', '1234567892'),
('Varun', 'v@b.com', '1234567893'),
('Vikas', 'v@b.com', '1234567894'),
('Amrit', 'a@b.com', '1234567895'),
('Neha', 'n@b.com', '1234567896'),
('Shivani', 's@b.com', '1234567897'),
('Barun', 'b@b.com', '1234567898'),
('Mayank', 'm@b.com', '1234567899');
select * from Members;
insert into Meetings(Title, Date, Time, Location) VALUES
('Meeting 1', '2023-07-01', '10:00:00', 'Room 1'),
('Meeting 2', '2023-07-02', '11:00:00', 'Room 2'),
('Meeting 3', '2023-07-03', '12:00:00', 'Room 3'),
('Meeting 4', '2023-07-04', '13:00:00', 'Room 4'),
('Meeting 5', '2023-07-05', '14:00:00', 'Room 5'),
('Meeting 6', '2023-07-06', '15:00:00', 'Room 6'),
('Meeting 7', '2023-07-07', '16:00:00', 'Room 7'),
('Meeting 8', '2023-07-08', '17:00:00', 'Room 8'),
('Meeting 9', '2023-07-09', '18:00:00', 'Room 9'),
('Meeting 10', '2023-07-10', '19:00:00', 'Room 10');
select * from Meetings;
insert into Attendance(MemberID, MeetingID, Status) VALUES
(1, 1, 'Present'),
(2, 1, 'Absent'),
(3, 1, 'Present'),
(4, 1, 'Present'),
(5, 1, 'Absent'),
(6, 1, 'Present'),
(7, 1, 'Absent'),
(8, 1, 'Present'),
(9, 1, 'Present'),
(10, 1, 'Absent');
select * from Attendance;
TRUNCATE TABLE Members;
TRUNCATE TABLE Meetings;
TRUNCATE TABLE Attendance;
select* from Members;
select* from Meetings;
select* from Attendance;
drop table Attendance;
drop table Members;
drop table Meetings;
drop database society;