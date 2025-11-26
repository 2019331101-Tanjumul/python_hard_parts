-- Drop the table if it exists
DROP TABLE IF EXISTS employees;

-- Task
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

select fname , salary, case when salary > 0 then Round(salary*.10)
end as Bonus from employees order by salary asc; 
