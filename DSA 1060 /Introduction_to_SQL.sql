create database Student;
use Student; 

create table DSA (Student_name VARCHAR(50), ID_no INT, Reg_date DATE, Scores DECIMAL(20, 2), Is_active BIT);

insert into DSA (Student_name, ID_no, Reg_date, Scores, Is_active) values 
('Christie', 202609422, '2026-05-13', 95.00, 1),
('Rosa', 202608678, '2026-05-15', 92.50, 1),
('Benjamin', 202601897, '2026-04-12', 97.25, 0),
('Caroline', 202106723, '2021-01-10', 88.00, 0);

select * from DSA;

-- How to delete a row :
-- delete from DSA where Student_name = 'Aaron'

-- Updating Christie's ID number 
update DSA
set ID_no = 10 where ID_no = 202609422;

-- Updating Rosa's ID number 
update DSA set ID_no = 22 where Student_name = 'Rosa';

-- Giving every active student 100 
update DSA set Scores = 100.00 where Is_active = 1;

-- Filtering data : select {*} or {a column in the table} from {Table name} where {your condition}; 
select Student_name, Scores, ID_no from DSA where Scores < 100;

-- Sorting data 
select Student_name, ID_no, Scores from DSA order by Scores asc; -- asc meaning ascending, desc meaning descending 

-- Practicing deletion 
delete from DSA where Student_name = 'Benjamin';

-- readding Bennie and myself to the DSA table 
insert into DSA (Student_name, ID_no, Reg_date, Scores, Is_active) values 
('Aaron', 1, '2026-05-11', 100.00, 1),
('Benjamin', 2, '2026-05-12',92.00, 0);

-- 03/06/2026 
select * from DSA

-- Altering my table (DSA) 
alter table DSA
add Major varchar(50);

-- Updating the values in the 'Major' field 
update DSA
set Major = 'Data Science and Analytics' where Scores >= 95;

-- 'in' allows you to update more than one value 

update DSA 
set Major = 'Software Engineering' where ID_no in (2, 202106723);

-- Getting to 10 records 
insert into DSA (Student_name, ID_no, Reg_date, Scores, Is_active, Major) values
('Jaden', 3, '2025-09-11', 83.50, 1, 'Architecture'),
('Jude', 4, '2026-11-11', 87.00, 0, 'APT'),
('Jesse', 5, '2026-10-09', 76.25, 0, 'AI and Robotics'),
('Rhoda', 6, '2019-05-11', 87.50, 0, 'Psychology');

-- Sorting data again 
select * from DSA order by ID_no asc;

-- Counting 
select count(*) as total_observations -- the 'as total_observations' gets rid of the (no column name we had when we first ran the code)
from DSA; -- this returns the number of observations in the table 

-- Getting the average score 
select avg(Scores) as average_score from DSA;

-- Getting the standard deviation of the scores 
select stdev(Scores) as standard_deviation from DSA; 

-- 'group by' to group rows sharing similar values 
select Major, count(*) as count_in_major from DSA group by Major;


-- Creating another table  ID, grade (A,B,C,D), attendace percentage 
-- create database School_of_Science; -- I didn't need this :(
-- use School_of_Science; -- I didn't need this either :(

create table UA (ID_no INT, Grade CHAR, attendace_percentage DECIMAL (20, 2));

insert into UA (ID_no, Grade, attendace_percentage) values 
(1, 'A', 100.00),
(2, 'A', 35.00),
(3, 'B', 88.25), 
(4, 'B', 15.15),
(5, 'C', 50.00),
(6, 'B', 43.50);

insert into UA (ID_no, Grade, attendace_percentage) values 
(202609422, 'A', 99.99),
(202608678, 'A', 93.00),
(202601897, 'A', 91.25), 
(202106723, 'B', 100.00);

select * from UA;

-- inner joining 
select DSA.Student_name, DSA.ID_no, UA.Grade, UA.attendace_percentage
from DSA
inner join UA 
on DSA.ID_no = UA.ID_no


