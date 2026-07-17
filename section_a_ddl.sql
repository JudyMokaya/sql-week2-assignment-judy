-- Section A: String Functions
-- Name : Judy Mokaya
-- Date: 17-07-2026
-- =====================================================

-- Q1. Create a schema called greenwood_academy and make sure SQL is using it before you do anything else.
create schema if not EXISTS greenwood_academy;

set SEARCH_PATH to greenwood_academy;

-- Q2. Create the students table with the following columns:
create table greenwood_academy.students(
student_id INT primary key,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
gender CHAR(1),
date_of_birth DATE,
class VARCHAR(10),
city VARCHAR(50)
);

select * from greenwood_academy.students;

-- Q3. Create the subjects table with the following columns:
create table greenwood_academy.subjects(
subject_id INT primary key,
subject_name VARCHAR(100) not null unique,
department VARCHAR(50),
teacher_name VARCHAR(100),
credits INT
);

select * from greenwood_academy.subjects;

-- Q4. Create the exam_results table with the following columns:
create table greenwood_academy.exam_results(
result_id INT primary key,
student_id INT not null references greenwood_academy.students(student_id),
subject_id INT not null references greenwood_academy.subjects(subject_id),
marks INT not null,
exam_date DATE,
grade VARCHAR(2)
);

-- Q5. After creating the students table, the school realises they forgot 
-- to include a phone number column. Use ALTER TABLE to add a column called 
-- phone_number with data type VARCHAR(20).
alter table greenwood_academy.students
add column phone_number VARCHAR(20);

-- Q6. The column credits in the subjects table needs to be renamed to credit_hours. 
-- Write the SQL to rename it.
alter table greenwood_academy.subjects
rename column credits to credit_hours;

-- Q7. The school decides they no longer need the phone_number column you added in Q5. 
-- Write the SQL to remove it completely from the students table.
alter table greenwood_academy.students
drop column phone_number;
