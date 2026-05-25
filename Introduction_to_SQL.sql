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