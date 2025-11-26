-- Drop the table if it exists
DROP TABLE IF EXISTS employees;

-- Create the table
CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- Insert 9 entries with different names and salaries
INSERT INTO employees (fname, salary) VALUES 
('John Smith', 45000.00),
('Maria Garcia', 52000.00),
('David Johnson', 38000.00),
('Sarah Williams', 61000.00),
('Michael Brown', 29000.00),
('Emily Davis', 75000.00),
('Robert Miller', 48000.00),
('Lisa Wilson', 67000.00),
('Lis Wilson', 6000.00),
('Lsa Wilson', 7000.00),
('James Taylor', 54000.00);

/*Here now i want to add an another table with set amount of words like the if else statemeny type now :*/
-- Display all records

-- select fname , salary , 
-- case when salary >= 30000 then 'Liveable' 
-- else 'Not liveable'
-- end as salary_category from employees;

select fname,salary, case 
when salary > 50000 then 'Liveable'
when salary between 250000 and 35000 then 'Mid level'
when salary <= 15000 then 'Misarable' 
else 'semi liveable'
end as salary_type from employees order by salary desc; 


