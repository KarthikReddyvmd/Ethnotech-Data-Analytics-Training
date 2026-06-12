show databases;

use sampledb;

CREATE TABLE ProjectTasks (
    ProjectName VARCHAR(100),
    TaskName VARCHAR(100),
    AssignedTo VARCHAR(100),
    StartDate DATE,
    DaysRequired INT,
    EndDate DATE,
    Progress DECIMAL(5,2)
);

INSERT INTO ProjectTasks (ProjectName, TaskName, AssignedTo, StartDate, DaysRequired, EndDate, Progress)
VALUES
('Website Redesign', 'UI Mockups', 'Amit', '2026-06-01', 5, '2026-06-06', 80.00),
('Website Redesign', 'Backend API Setup', 'Priya', '2026-06-02', 10, '2026-06-12', 60.00),
('Website Redesign', 'Database Design', 'Ravi', '2026-06-03', 7, '2026-06-10', 90.00),
('Mobile App', 'Login Page', 'Sneha', '2026-06-04', 4, '2026-06-08', 100.00),
('Mobile App', 'Push Notifications', 'Kiran', '2026-06-05', 6, '2026-06-11', 70.00),
('E-Commerce Platform', 'Product Listing', 'Deepak', '2026-06-06', 8, '2026-06-14', 50.00),
('E-Commerce Platform', 'Payment Gateway', 'Anjali', '2026-06-07', 9, '2026-06-16', 40.00),
('E-Commerce Platform', 'User Reviews', 'Rohit', '2026-06-08', 5, '2026-06-13', 30.00),
('Data Analytics', 'Data Cleaning', 'Meena', '2026-06-09', 3, '2026-06-12', 100.00),
('Data Analytics', 'Visualization Dashboard', 'Arjun', '2026-06-10', 7, '2026-06-17', 75.00),
('AI Chatbot', 'Intent Classification', 'Divya', '2026-06-11', 10, '2026-06-21', 65.00),
('AI Chatbot', 'Response Generation', 'Vikram', '2026-06-12', 8, '2026-06-20', 55.00),
('Cloud Migration', 'Server Setup', 'Neha', '2026-06-13', 6, '2026-06-19', 85.00),
('Cloud Migration', 'Data Transfer', 'Rahul', '2026-06-14', 5, '2026-06-19', 90.00),
('Cybersecurity Audit', 'Vulnerability Scan', 'Suresh', '2026-06-15', 4, '2026-06-19', 95.00),
('Cybersecurity Audit', 'Report Preparation', 'Pooja', '2026-06-16', 3, '2026-06-19', 80.00),
('IoT Project', 'Sensor Integration', 'Manoj', '2026-06-17', 7, '2026-06-24', 60.00),
('IoT Project', 'Data Transmission', 'Lakshmi', '2026-06-18', 5, '2026-06-23', 50.00),
('Machine Learning Model', 'Feature Engineering', 'Harsha', '2026-06-19', 6, '2026-06-25', 70.00),
('Machine Learning Model', 'Model Evaluation', 'Gayathri', '2026-06-20', 5, '2026-06-25', 40.00);

select * from projecttasks;

select taskname,datediff(enddate,startdate) as datedifference from projecttasks;


select date_format(startdate,"%y") from projecttasks;

select dayname(startdate) as day1, dayname(enddate) as day2 from projecttasks;

select quarter(startdate) from projecttasks;


select * from projecttasks where projectname regexp '^w';

select count(*) from projecttasks 
where 
projectname like 'w%' or
projectname like 'm%' or
projectname like 'd%' ;

select count(*) from projecttasks where projectname regexp '[wmd]' ;

select count(*) from projecttasks where projectname regexp '^[wmd]' ;

select * from projecttasks where projectname regexp '^[wmd]' ;

select * from projecttasks where projectname regexp '^[a-z]' ;

