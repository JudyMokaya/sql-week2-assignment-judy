-- Section D: Range, Membership & Search Operators
-- Name: Judy Mokaya
-- Date: 2026-07-17
-- ===============================================
-- Q21. Write a query to find all exam results where marks are between 50 and 80 (inclusive).
select result_id, marks
from greenwood_academy.exam_results
where marks between 50 and 80;

-- Q22. Write a query to find all exams that took place between 15th March 2024 and 18th March 2024.
select subject_id, exam_date
from greenwood_academy.exam_results
where exam_date between '2024-03-15' and '2024-03-18'
order by exam_date;

-- Q23. Write a query to find all students who live in Nairobi, Mombasa, or Kisumu - use IN.
select first_name, last_name, city 
from greenwood_academy.students
where city in ('Nairobi', 'Mombasa', 'Kisumu');

-- Q24. Write a query to find all students who are NOT in Form 2 or Form 3 - use NOT IN.
-- same results as Q15
select first_name, last_name, class 
from greenwood_academy.students
where class not in ('Form 2', 'Form 3');

-- Q25. Write a query to find all students whose first name starts with the letter 'A' or 'E' - use LIKE.
select first_name, last_name
from greenwood_academy.students
where first_name like 'A%' or first_name like 'E%';

-- Q26. Write a query to find all subjects whose subject name contains the word 'Studies'.
select subject_name
from greenwood_academy.subjects
where subject_name like '%Studies%';
