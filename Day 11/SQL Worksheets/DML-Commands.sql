use db;

create table emp_new
(
first_name varchar(50),
last_name varchar(50),
designation varchar(50),
age int,
salary numeric
);

INSERT INTO emp_new VALUES
('Vicky','Don','Manager',24,30000.00),
('Vinod','Reddy','Software Developer',30,55000.00),
('Sneha','Kumar','Data Analyst',28,48000.00),
('Rahul','Sharma','Project Lead',35,72000.00),
('Priya','Patel','HR Executive',26,42000.00),
('Arjun','Mehta','Business Analyst',29,60000.00),
('Neha','Singh','UI/UX Designer',32,65000.00),
('Kiran','Das','System Administrator',27,47000.00),
('Ravi','Varma','Database Engineer',31,58000.00),
('Anita','Nair','Quality Analyst',25,39000.00),
('Suresh','Yadav','DevOps Engineer',34,81000.00),
('Meera','Joshi','Software Tester',28,45000.00),
('Deepak','Chauhan','Network Engineer',33,70000.00),
('Lakshmi','Iyer','Cloud Architect',29,95000.00),
('Manoj','Gupta','Team Lead',36,88000.00),
('Shalini','Rao','Frontend Developer',27,52000.00),
('Amit','Kapoor','Backend Developer',30,61000.00),
('Divya','Shah','Business Consultant',26,73000.00),
('Nikhil','Bose','Product Manager',28,90000.00),
('Pooja','Mishra','Data Scientist',31,99000.00)
;

select * from emp_new;

select 
first_name, salary
from 
emp_new 
where designation = 'Data Analyst';

select 
first_name, salary, designation
from 
emp_new 
where designation like '%Analyst%';

select 
first_name, salary, designation
from 
emp_new 
where designation like '%Developer%';

select 
first_name, salary, designation
from 
emp_new 
where designation like 'Data%';

SET SQL_SAFE_UPDATES=0;

update 
emp_new 
set 
designation = 'Senior Manager'
where 
first_name='Vicky' and last_name='Don';

update 
emp_new 
set 
designation = 'Senior Data Analyst' , age = age+2
where 
first_name='Vicky' and last_name='Don';

update 
emp_new 
set 
salary = salary + 3500 
where
salary < 50000;

update 
emp_new 
set 
salary = salary + 4500 
where
salary > 50000;


