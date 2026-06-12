use db;

select * from employees;

select avg(salary) from employees;

select name, salary 
from employees 
where salary > (select avg(salary) from employees);

select * 
from employees 
where salary > (select salary from employees where name='Arun');

select * 
from employees 
where salary = ( select max(salary) from employees 
where salary= ( select max(salary) from employees));

select * 
from employees 
where salary = ( select max(salary) from employees 
where salary< ( select max(salary) from employees
where salary < (select max(salary) from employees )));

select *
from employees
order by salary;

select *
from employees
order by salary desc;


CREATE VIEW newview1 AS
SELECT 
    e.id,
    e.name,
    e.position,
    e.salary,
    n.title
FROM employees e
INNER JOIN jobtitle1 n
    ON e.id = n.id;




