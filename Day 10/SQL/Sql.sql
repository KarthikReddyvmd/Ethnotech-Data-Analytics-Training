select * from employees;

select name ,salary from employees;

select name ,salary from employees where salary>'75000';

select name ,salary>75000 from employees;

select *from employees
where position='Manager';

select *from employees 
where position='Employee';

select avg(salary) as avg_salary from employees;

select max(salary) as max_salary from employees;

select position,count(*) as total from employees group by position;

