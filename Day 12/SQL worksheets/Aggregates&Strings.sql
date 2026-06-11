use sampledb;

select * from customers2;

select Company, count(*) as count from customers2
group by Company;

select City, count(*) as count from customers2
group by City;

select sum(Company) as total from customers2;

select concat(first_name,last_name) from customers2;

select trim(concat(first_name,last_name)) from customers2;

select concat(upper(first_name),upper(last_name)) as NAME from customers2;

select upper(city) as City from customers2;

select character_length(concat(first_name,last_name)) as length from customers2;


