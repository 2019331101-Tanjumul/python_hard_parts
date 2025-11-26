/*DROP TABLE IF EXISTS persons;

CREATE TABLE persons(
    p_id SERIAL PRIMARY KEY,  
    fname VARCHAR(50),  -- Added fname column
    name VARCHAR(50) not null,
    city VARCHAR(50) NOT NULL,
    age VARCHAR(50) NOT NULL
);

INSERT INTO persons(fname, name, city, age) VALUES 
('Tanjumul', 'Alom', 'Gaibandha', '25'),
('Maria', 'Khan', 'Dhaka', '28'),
('John', 'Doe', 'Chittagong', '32'),
('Fatima', 'Begum', 'Sylhet', '22'),
('Raj', 'Sharma', 'Khulna', '35'),
('Aisha', 'Ahmed', 'Rajshahi', '29'),
('David', 'Smith', 'Barisal', '31'),
('Sophia', 'Islam', 'Rangpur', '26');

SELECT * FROM persons;

ALTER TABLE persons ADD COLUMN smoker VARCHAR(20) DEFAULT '0';

ALTER TABLE persons RENAME COLUMN smoker TO addicted;


INSERT INTO persons (fname, name, city, age) VALUES ('Smith', 'Wilson', 'New York', '30');

alter table persons alter column fname set default 'unknown'; 
insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

alter table persons alter column fname drop default;
insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

SELECT * FROM persons; */
/*
Practice tasks : 
# Date : 25/11/25

1. Find the total no of employees in database  ?   answer : select count(emp_id) as Employee_count from employee; 
2. find the number of employees in each department. answer : select dept , count(emp_id) from employee group by dept; 
3. find lowest salary paying answer : select fname , lname , salary, dept from  employee order by salary asc limit 1 ; 
4. find highest salary paying answer : select fname , lname , salary, dept from  employee order by salary desc limit 1 ; 
5. find total salary paying in HR department answer : select dept, sum(salary) as total_salary from  employee where dept = 'HR' group by dept; 
6. average salary paying to each department answer : select dept, avg(salary) as avg_salary from  employee group by dept ;
*/
--start forom : 2:31 --check is the topic ! 


/*for check 


/*from check 

drop table if exists contact(
name varchar(20), 
mob varchar(11) unique check(length(mob) >= 11)
);*/


-- DROP TABLE IF EXISTS persons;

-- CREATE TABLE persons(
--     p_id SERIAL PRIMARY KEY,  
--     fname VARCHAR(50),  -- Added fname column
--     name VARCHAR(50),
--     city VARCHAR(50) ,
--     age VARCHAR(50) 
-- );

-- INSERT INTO persons(fname, name, city, age) VALUES 
-- ('Tanjumul', 'Alom', 'Gaibandha', '25'),
-- ('Maria', 'Khan', 'Dhaka', '28'),
-- ('John', 'Doe', 'Chittagong', '32'),
-- ('Fatima', 'Begum', 'Sylhet', '22'),
-- ('Raj', 'Sharma', 'Khulna', '35'),
-- ('Aisha', 'Ahmed', 'Rajshahi', '29'),
-- ('David', 'Smith', 'Barisal', '31'),
-- ('Sophia', 'Islam', 'Rangpur', '26');

-- SELECT * FROM persons;

-- ALTER TABLE persons ADD COLUMN smoker VARCHAR(20) DEFAULT '0';

-- ALTER TABLE persons RENAME COLUMN smoker TO addicted;


-- INSERT INTO persons (fname, name, city, age) VALUES ('Smith', 'Wilson', 'New York', '30');

-- alter table persons alter column fname set default 'unknown'; 
-- insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

-- -- alter table persons alter column fname drop default;
-- insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

-- SELECT * FROM persons;


-- alter table persons 
-- add column mob varchar(11) check (length(mob) >= 11);
-- INSERT INTO persons (mob) VALUES ('01712009449');

-- /* to remove this i have to use constraint thus it has no name check is a constrain remember */

-- alter table persons
-- drop constraint persons_mob_check;
-- INSERT INTO persons (mob) VALUES ('017120094490');
-- SELECT * FROM persons;



DROP TABLE IF EXISTS persons;

CREATE TABLE persons(
    p_id SERIAL PRIMARY KEY,  
    fname VARCHAR(50),  -- Added fname column
    name VARCHAR(50),
    city VARCHAR(50) ,
    age VARCHAR(50) 
);

INSERT INTO persons(fname, name, city, age) VALUES 
('Tanjumul', 'Alom', 'Gaibandha', '25'),
('Maria', 'Khan', 'Dhaka', '28'),
('John', 'Doe', 'Chittagong', '32'),
('Fatima', 'Begum', 'Sylhet', '22'),
('Raj', 'Sharma', 'Khulna', '35'),
('Aisha', 'Ahmed', 'Rajshahi', '29'),
('David', 'Smith', 'Barisal', '31'),
('Sophia', 'Islam', 'Rangpur', '26');

SELECT * FROM persons;

ALTER TABLE persons ADD COLUMN smoker VARCHAR(20) DEFAULT '0';

ALTER TABLE persons RENAME COLUMN smoker TO addicted;


INSERT INTO persons (fname, name, city, age) VALUES ('Smith', 'Wilson', 'New York', '30');

alter table persons alter column fname set default 'unknown'; 
insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

-- alter table persons alter column fname drop default;
insert into persons( name , city , age) values('tanjumul','new-south-walse','27');

SELECT * FROM persons;


alter table persons 
add column mob varchar(20) check (length(mob) >= 11);
INSERT INTO persons (mob) VALUES ('01712009449');

/* to remove this i have to use constraint thus it has no name check is a constrain remember */

alter table persons
drop constraint persons_mob_check;
INSERT INTO persons (mob) VALUES ('017120094490');

/*now i'm trying to drop the whole comumn*/

alter table persons drop column mob;

/*another way , basically it's the practical way so that the system don't set the constrain name by it's own*/



SELECT * FROM persons;
