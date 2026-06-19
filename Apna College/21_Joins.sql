create database society;
use society;
create table resident(
    id int auto_increment primary key,
    name varchar(50) not null,
    phone varchar(15) not null unique,
    members int not null,
    floor int not null,
    house_no int not null,
    created_at timestamp default current_timestamp
);
create table maintenance_request(
    id int auto_increment primary key,
    resident_id int not null,
    request_type varchar(50) not null,
    status varchar(20) not null,
    description text,
    created_at timestamp default current_timestamp,
    foreign key (resident_id) references resident(id)
);
create table payment_record(
    id int auto_increment primary key,
    resident_id int not null,
    amount decimal(10, 2) not null,
    payment_date date not null,
    created_at timestamp default current_timestamp,
    foreign key (resident_id) references resident(id)
);
insert into resident (name, phone, members, floor, house_no) VALUES
('Mayank', '1234567890', 4, 2, 101),
('Rahul', '1234567891', 3, 1, 102),
('Amit', '1234567892', 5, 3, 103),
('Shivani', '1234567893', 2, 1, 104),    
('Rohit', '1234567894', 4, 2, 105),
('Neha', '1234567895', 3, 1, 106),
('Vikas', '1234567896', 5, 3, 107),
('Varun', '1234567897', 2, 1, 108),
('Vishal', '1234567898', 4, 2, 109),
('Ankit', '1234567899', 3, 1, 110);
select * from resident;
insert into maintenance_request (resident_id, request_type, status, description) VALUES
(1, 'Electrical', 'Pending', 'Light bulb is not working in the kitchen.'),
(2, 'Plumbing', 'Resolved', 'Leakage in the bathroom sink.'),
(3, 'Cleaning', 'Pending', 'Dust accumulation on the windows and doors.'),
(4, 'Painting', 'Resolved', 'Repainting required for the living room walls.'),
(5, 'Electrical', 'Pending', 'Faulty wiring in the bedroom.'),
(6, 'Plumbing', 'Resolved', 'Water heater is not functioning properly.'),
(7, 'Cleaning', 'Pending', 'Mopping of the floors needs to be done.'),
(8, 'Painting', 'Resolved', 'Repainting required for the kitchen walls.'),
(9, 'Electrical', 'Pending', 'Outlets are not working in the garage.'),
(10, 'Plumbing', 'Resolved', 'Leakage in the roof.');
select * from maintenance_request;
insert into payment_record (resident_id, amount, payment_date) VALUES
(1, 1000.00, '2022-01-15'),
(2, 1500.00, '2022-02-10'),
(3, 2000.00, '2022-03-05'),
(4, 2500.00, '2022-04-20'),
(5, 3000.00, '2022-05-15'),
(6, 3500.00, '2022-06-10'),
(7, 4000.00, '2022-07-05'),
(8, 4500.00, '2022-08-20'),
(9, 5000.00, '2022-09-15'),
(10, 5500.00, '2022-10-10');
select * from payment_record;
select r.name, r.phone, m.request_type, m.status, m.description, p.amount, p.payment_date
from resident r
join maintenance_request m on r.id = m.resident_id
join payment_record p on r.id = p.resident_id;
select r.name, r.phone, m.request_type, m.status, m.description, p.amount, p.payment_date
from resident r
join maintenance_request m on r.id = m.resident_id
join payment_record p on r.id = p.resident_id
where m.status = 'Pending';
select r.name, r.phone, m.request_type, m.status, m.description, p.amount, p.payment_date
from resident r
join maintenance_request m on r.id = m.resident_id
join payment_record p on r.id = p.resident_id
where m.status = 'Resolved';
select * from resident;
select * from maintenance_request;
select * from payment_record;
drop table resident;
drop table maintenance_request;
drop table payment_record;
drop database society;