DROP TABLE IF EXISTS persons;

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

SELECT * FROM persons;

--start forom : 2:31 --check is the topic ! 