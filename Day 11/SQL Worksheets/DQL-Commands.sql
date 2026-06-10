use db;

create table emp_info
(
first_name varchar(50),
last_name varchar(50),
id int not null,
age int,
city varchar(50),
state varchar(50),
primary key(id)
);


desc emp_info;

INSERT into emp_info values
('Vicky','Don',99980,24,'Angallu','AndhraPradesh'),
('Vinod','Reddy',99857,30,'Banglore','Karnataka')
;

INSERT into emp_info values
('Sneha','Kumar',99860,28,'Chennai','TamilNadu'),
('Rahul','Sharma',99861,35,'Delhi','Delhi'),
('Priya','Patel',99862,26,'Ahmedabad','Gujarat'),
('Arjun','Mehta',99863,29,'Mumbai','Maharashtra'),
('Neha','Singh',99864,32,'Lucknow','UttarPradesh'),
('Kiran','Das',99865,27,'Kolkata','WestBengal'),
('Ravi','Varma',99866,31,'Hyderabad','Telangana'),
('Anita','Nair',99867,25,'Kochi','Kerala'),
('Suresh','Yadav',99868,34,'Jaipur','Rajasthan'),
('Meera','Joshi',99869,28,'Pune','Maharashtra'),
('Deepak','Chauhan',99870,33,'Bhopal','MadhyaPradesh'),
('Lakshmi','Iyer',99871,29,'Coimbatore','TamilNadu'),
('Manoj','Gupta',99872,36,'Patna','Bihar'),
('Shalini','Rao',99873,27,'Vizag','AndhraPradesh'),
('Amit','Kapoor',99874,30,'Chandigarh','Punjab'),
('Divya','Shah',99875,26,'Surat','Gujarat'),
('Nikhil','Bose',99876,28,'Guwahati','Assam'),
('Pooja','Mishra',99877,31,'Kanpur','UttarPradesh')
;

desc emp_info;

SELECT * from emp_info;

SELECT count(*) as count from emp_info;



SELECT first_name,last_name 
from
emp_info;

select *from emp_info where age>30;

select * from
emp_info
where age>25 and age<30;

select * from
emp_info
where first_name like '%a%';

select * from
emp_info
where first_name like 'a%';

select * from
emp_info
where first_name like '%a';

select * from
emp_info
where age=26 or age=28;

select * from
emp_info
where age in (29,32);

select * from
emp_info
where first_name like 'a%' and last_name like '%a%';

select * from
emp_info
where first_name like 'a%' and last_name like '%a%' ;

select * from
emp_info
where first_name like 'a____' ;




