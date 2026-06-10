use db;

CREATE TABLE EMPLOYEE_TB(
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Title VARCHAR(50),
Age INT,
Salary numeric(10)
);

DESC employee_tb;

ALTER table EMPLOYEE_TB ADD Gender VARCHAR(50);

Alter table employee_tb modify Salary numeric(50);

ALter table employee_tb DROP column gender;

Drop table employee_tb;
