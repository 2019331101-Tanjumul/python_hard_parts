-- Active: 1763750015646@@127.0.0.1@5432@bankdb
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
('Tanjumul', 'Alom', 'tanjumul@company.com', 'HR', 53800.00, '2024-02-20'),
('tanvir', 'Rahman', 'tanvir@company.com', 'HR', 59800.00, '2024-02-20'),
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
-- select count(*) as hr_employee_count
-- from employee 
-- where dept = 'HR'
-- select * from employee order by emp_id; 
-- select * from employee ; 

-- like clause to use : dsa and sql daily and backend maybe less time but daily while it's done then go for doing projects and learn advanced  calculus for fun check the khan achedey ! 

-- select * from employee where fname like '%l';
-- select * from employee where fname like '%u%'; --finding letters between anything so we do by using the like clause here
-- select * from employee where dept like '__'; -- searching tthe two carectered dept , i can search 2 charectered any pattern by using __ and for one i can use _ ; 



--aggregate functions to use : count , sum , min , max , avg  ; now , 

-- select dept from employee; 
-- SELECT dept FROM employee GROUP BY dept ORDER BY dept;
-- See all employees with their department rankings
-- SELECT 
--     emp_id,
--     fname,
--     lname,
--     dept,
--     salary,
--     RANK() OVER (PARTITION BY dept ORDER BY salary DESC) as dept_rank
-- FROM employee
-- ORDER BY dept, dept_rank;

-- select fname , lname , dept, salary from employee order by salary desc limit 1; 
-- select fname , lname , dept, salary from employee where salary = (select max(salary)from employee);

-- select fname , lname , dept, salary from employee order by salary desc limit 5  ; 

--here if i want to see the dept name and the count of the employees only then 

-- select dept , sum(salary) from employee group by dept ; 

--1:50:00 start the session from here; 

--compliting the whole section of the ecommerce -react query in 2 hours !! 

-- select concat ('hello', 'world');





-- select * from employee; 

-- select emp_id , concat(fname,lname) as fullname from employee  where fname like 'T%' order by emp_id desc; 

--using the substring : 

-- select substr('Hello Tanjumul' , 1,9); 
--it's showing : Hello Tan  
-- select substr('hello tanjumul alom siam ', 7,9);

--showing : tanjumul : that means i can successfully decrementing it's output ! 

--replace function : 

-- select replace('This word is yet to be changed' , 'This' , 'Tanjumul') -- where , target word , change with this word 

-- select replace(dept, 'IT','HR') from employee; --Changing the dept collumn's it to hr with replace function 

--reverse 

-- select reverse('Hello')
-- select length(lname) from employee ; 


--Task : you have to disply the names of them where their's first name's len is >= 5 

-- select * from employee where length(fname) >= 5 order by emp_id; 

--jsut like the substring : if i want to print from left then right i will do: 

-- select right('Hello  world', 5) --what is happening here is , it is pointing at the end of the last right word then counting backwards to print the 5 words

-- select left('TanjumulAlom', 8) -- it's printing the word's 8 characters from fist to first 8 here it's pointer is sitting in the first word [0]th position



--triming from a function now , is there is someting where multiple spacing occures then you will trim then you can do what ever 
--here i want to get the currect length of the words in a substring but there some unexpected spacing has occurs i don't want those i will do : 

-- select length(trim('      Tanjumul     '));

--position : now you can make or cutout someting particular from a word like this : 

-- select position('om' in 'TanjumulAlomSiam');

-- need Tanjumul:Alom:it in this way 

select concat_ws(':',fname , lname , dept) from employee ;












