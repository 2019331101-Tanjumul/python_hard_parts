-- DROP TABLE IF EXISTS STUDENTS; 


-- CREATE TABLE EMPLOYEE (

-- Emp_name TEXT NOT NULL , 
-- Emp_number INTEGER NOT NULL, 
-- Emp_addr TEXT NOT NULL
-- );

-- INSERT INTO EMPLOYEE VALUES 
-- ('Dr.TANJUMUL' , '01712987393', 'GAIBANDHA'), 
-- ('Brother Tanvir' , '0333223239', 'RANGPUR'), 
-- ('Someone is so special and important in my life ma', '0183242448' , 'GAIBANDHA');


-- SELECT * FROM EMPLOYEE;


-- it is a table of the bank employee details and i count the hr dept's all employe in total so i will do:

-- table name will be employee 
-- emp_id , fname , lname , email , dept , salary , hire_date -- employe id will be unique and primary number with auto incriment , email will be unique , not null except in department , 
-- salary can be decemal & default value 30,000 salary can be default , hired date the current date as default and inputable

drop table if exists employee; 

create table employee (

emp_id serial primary key, 
fname varchar(100) not null, 
lname varchar(100) not null,
email varchar(100) unique not null, 
dept varchar(20), 
salary decimal(7,2) default '30000.00', 
hire_date date default current_date 

);


INSERT INTO employee ( fname , lname , email , dept , salary , hire_date) VALUES 

('John', 'Doe', 'john.doe@company.com', 'IT', 55000.00, default),
('Jane', 'Smith', 'jane.smith@company.com', 'HR', 52000.00,'2025-11-23'),
('Bob', 'Johnson', 'crackerroot4@gmail.com', 'Finance', 58000.00,default),
('Mike', 'Wilson', 'mike.wilson@company.com', 'IT', 62000.00, default),
('Sarah', 'Miller', 'sarah.miller@company.com', 'HR', 48000.00, default),
('David', 'Lee', 'david.lee@company.com', 'Finance', 65000.00, default),
('Lisa', 'Taylor', 'lisa.taylor@company.com', 'IT', 58000.00, default),
('Tom', 'Anderson', 'tom.anderson@company.com', 'Marketing', 52000.00, default),
('Robert', 'Williams', 'robert.williams@company.com', 'IT', 67000.00, '2024-02-01'),
('Maria', 'Garcia', 'maria.garcia@company.com', 'HR', 53000.00, '2024-02-02'),
('James', 'Johnson', 'james.johnson@company.com', 'Finance', 72000.00, '2024-02-03'),
('Patricia', 'Martinez', 'patricia.martinez@company.com', 'IT', 61000.00, '2024-02-04'),
('Michael', 'Brown', 'michael.brown@company.com', 'Marketing', 56000.00, '2024-02-05'),
('Linda', 'Davis', 'linda.davis@company.com', 'Sales', 49000.00, '2024-02-06'),
('William', 'Rodriguez', 'william.rodriguez@company.com', 'IT', 69000.00, '2024-02-07'),
('Barbara', 'Miller', 'barbara.miller@company.com', 'HR', 54500.00, '2024-02-08'),
('Richard', 'Jones', 'richard.jones@company.com', 'Finance', 68000.00, '2024-02-09'),
('Susan', 'Hernandez', 'susan.hernandez@company.com', 'Marketing', 57500.00, '2024-02-10'),
('Joseph', 'Gonzalez', 'joseph.gonzalez@company.com', 'Sales', 51000.00, '2024-02-11'),
('Jessica', 'Wilson', 'jessica.wilson@company.com', 'IT', 62500.00, '2024-02-12'),
('Thomas', 'Anderson', 'thomas.anderson@company.com', 'Operations', 48000.00, '2024-02-13'),
('Karen', 'Thomas', 'karen.thomas@company.com', 'HR', 52700.00, '2024-02-14'),
('Charles', 'Taylor', 'charles.taylor@company.com', 'Finance', 71000.00, '2024-02-15'),
('Nancy', 'Moore', 'nancy.moore@company.com', 'Marketing', 58800.00, '2024-02-16'),
('Christopher', 'Jackson', 'christopher.jackson@company.com', 'Sales', 49500.00, '2024-02-17'),
('Betty', 'Martin', 'betty.martin@company.com', 'IT', 65500.00, '2024-02-18'),
('Daniel', 'Lee', 'daniel.lee@company.com', 'Operations', 46500.00, '2024-02-19'),
('Donna', 'Perez', 'donna.perez@company.com', 'HR', 53800.00, '2024-02-20'),
('Alice', 'Brown', 'alice.brown@company.com', 'IT', 60000.00, default);

-- -- SELECT * FROM employee WHERE email = 'crackerroot4@gmail.com';
-- -- select dept, count(*) as total_emp , avg(salary) as avg_salary
-- select emp_id , fname , lname , dept , salary
-- from employee 
-- -- group by emp_id
-- order by salary; 


-- select emp_id , count(*) as employee_count , avg(salary) as avg_salary
-- from employee
-- group by emp_id
-- order by emp_id; 

-- to see the 'hr' count : 
select count(*) as hr_employee_count
from employee 
where dept = 'HR'
-- select * from employee order by emp_id; 