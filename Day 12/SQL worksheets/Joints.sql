create database db1;

use db1;

create table cust_info
(
customer_name varchar(100),
customer_id varchar(100),
city varchar(100),
postal_code varchar(10),
country varchar(20),
primary key(customer_id)
);

alter
table cust_info 
modify
customer_id int;

alter 
table cust_info
add
address varchar(200) after customer_id;

create table order_info
(
order_id int,
customer_id int,
employee_id int,
order_date datetime,
shipper_id int,
primary key(order_id)
);

INSERT INTO cust_info (customer_name, customer_id, address, city, postal_code, country)
VALUES
('Alice Johnson', 1, '123 Main St', 'New York', '10001', 'USA'),
('Brian Smith', 2, '456 Sunset Blvd', 'Los Angeles', '90001', 'USA'),
('Catherine Lee', 3, '789 Lake Shore Dr', 'Chicago', '60601', 'USA'),
('David Brown', 4, '321 Bayou Rd', 'Houston', '77001', 'USA'),
('Emma Davis', 5, '654 Desert Ave', 'Phoenix', '85001', 'USA'),
('Frank Wilson', 6, '987 Liberty St', 'Philadelphia', '19101', 'USA'),
('Grace Taylor', 7, '111 River Walk', 'San Antonio', '78201', 'USA'),
('Henry Martinez', 8, '222 Ocean View', 'San Diego', '92101', 'USA'),
('Isabella Thomas', 9, '333 Elm St', 'Dallas', '75201', 'USA'),
('Jack White', 10, '444 Silicon Blvd', 'San Jose', '95101', 'USA'),
('Kavya Patel', 11, '12 Marine Drive', 'Mumbai', '400001', 'India'),
('Liam Singh', 12, '34 Connaught Place', 'Delhi', '110001', 'India'),
('Meera Reddy', 13, '56 Charminar Rd', 'Hyderabad', '500001', 'India'),
('Nikhil Sharma', 14, '78 MG Road', 'Bengaluru', '560001', 'India'),
('Olivia Chen', 15, '101 Chang’an Ave', 'Beijing', '100000', 'China'),
('Paul Wong', 16, '202 Nanjing Rd', 'Shanghai', '200000', 'China'),
('Quinn Kim', 17, '303 Gangnam St', 'Seoul', '04524', 'South Korea'),
('Ravi Kumar', 18, '404 Marina Beach Rd', 'Chennai', '600001', 'India'),
('Sophia Garcia', 19, '505 Gran Via', 'Madrid', '28001', 'Spain'),
('Tom Müller', 20, '606 Unter den Linden', 'Berlin', '10115', 'Germany')
;

INSERT INTO order_info (order_id, customer_id, employee_id, order_date, shipper_id)
VALUES
(101, 1, 201, '2024-01-15 10:30:00', 301),
(102, 2, 202, '2024-01-16 14:45:00', 302),
(103, 3, 203, '2024-01-17 09:20:00', 303),
(104, 4, 204, '2024-01-18 11:10:00', 301),
(105, 5, 205, '2024-01-19 16:00:00', 302),
(106, 6, 206, '2024-01-20 13:25:00', 303),
(107, 7, 207, '2024-01-21 08:50:00', 301),
(108, 8, 208, '2024-01-22 15:40:00', 302),
(109, 9, 209, '2024-01-23 12:05:00', 303),
(110, 10, 210, '2024-01-24 17:15:00', 301),
(111, 11, 211, '2024-01-25 10:00:00', 302),
(112, 12, 212, '2024-01-26 14:30:00', 303),
(113, 13, 213, '2024-01-27 09:45:00', 301),
(114, 14, 214, '2024-01-28 11:55:00', 302),
(115, 15, 215, '2024-01-29 16:20:00', 303),
(116, 16, 216, '2024-01-30 13:10:00', 301),
(117, 17, 217, '2024-01-31 08:40:00', 302),
(118, 18, 218, '2024-02-01 15:25:00', 303),
(119, 19, 219, '2024-02-02 12:15:00', 301),
(120, 20, 220, '2024-02-03 17:05:00', 302)
;

insert into order_info
values
(121,21,221,'2024-02-04 20:09:00',303),
(122,22,222,'2024-02-05 18:50:00',304),
(123,23,223,'2024-02-06 08:36:56',305),
(124,24,224,'2024-02-07 09:56:06',306),
(125,25,225,'2024-02-08 12:36:00',307)
;

select *from cust_info;

select *from order_info;

select 
c.customer_id, c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info  c
Left join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id, c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info  c
right join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id, c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info  c
inner join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id, c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info  c
left outer join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id, c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info  c
right outer join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id,c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info c
left outer join
order_info o
on
c.customer_id=o.customer_id
Union
select 
c.customer_id, c.customer_name, c.country, o.order_id,o.order_date
from 
cust_info c
right outer join
order_info o
on
c.customer_id = o.customer_id;

select 
c.customer_id,c.customer_name, c.country, o.order_id, o.order_date
from 
cust_info c
left outer join
order_info o
on
c.customer_id=o.customer_id
intersect
select 
c.customer_id, c.customer_name, c.country, o.order_id,o.order_date
from 
cust_info c
right outer join
order_info o
on
c.customer_id = o.customer_id;

select customer_id from cust_info 
intersect
select customer_id from order_info;


select * from customers;