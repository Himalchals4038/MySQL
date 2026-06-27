create database ledger;
use ledger;
create table port1(
    id int primary key auto_increment,
    name varchar(50) not null,
    capacity int,
    docks int not null,
    fees int,
    location varchar(50) not null unique
);
insert into port1(name, capacity, docks, fees, location) values
('Port of Shanghai', 2200, 125, 5500, 'Shanghai, China'),
('Port of Singapore', 2000, 115, 5000, 'Singapore'),
('Port of Rotterdam', 1800, 100, 4500, 'Rotterdam, Netherlands'),
('Port of Hamburg', 1500, 85, 4200, 'Hamburg, Germany'),
('Port of Los Angeles', 1700, 95, 4800, 'Los Angeles, USA'),
('Port of Jebel Ali', 1900, 110, 5200, 'Dubai, UAE'),
('Port of Busan', 1600, 90, 4600, 'Busan, South Korea'),
('Port of Santos', 1300, 75, 3800, 'Santos, Brazil');
show indexes from port1;
create index idx_capacity on port1(capacity);
update port1 set capacity=capacity+100 where location='Shanghai, China';
select * from port1;
drop table port1;