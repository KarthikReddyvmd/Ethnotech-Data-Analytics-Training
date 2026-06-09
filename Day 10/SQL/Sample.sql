create database db;

use db;

create table employees(
id int auto_increment primary key,
name varchar(100) not null,
position varchar(50),
salary int
);

insert into employees (name,position,salary)
values
('Alice','Manager',75000),
('Bob','AssistantManager',85000),
('Charlie','Employee',90000),
('Don','Employee',65000),
('Elsa','HR',70000),
('Arun','Manager',80000),
('Karan','Employee',70000),
('Kiran','Employee',89000),
('Karthik','Manager',100000),
('Krishna','HR',100000)
;

select * from employees;

CREATE TABLE jobtitle1(
id int ,
emp_id int primary key,
title varchar(100),
foreign key (emp_id) references employees (id)
);

Insert INTO jobtitle1 (id,emp_id,title)
values
(1,1,'Developer'),
(2,2,'Tester'),
(3,3,'Deployer'),
(4,4,'Full stack'),
(5,5,'Cloud'),
(6,6,'DA'),
(7,7,'DS'),
(8,8,'AWS'),
(9,9,'Cyber'),
(10,10,'DSA')
;

select * from jobtitle1;





