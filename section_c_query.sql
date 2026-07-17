-- Section C: Querying the Data
-- Name: Judy Mokaya
-- Date: 2026-07-17
-- ===============================================
-- Q15. Write a query to find all students who are in Form 4.
select first_name, last_name, class 
from greenwood_academy.students
where class = 'Form 4';

-- Q16. Write a query to find all subjects in the Sciences department.
select subject_name, department
from greenwood_academy.subjects
where department = 'Sciences';

-- Q17. Write a query to find all exam results where the marks are greater than or equal to 70.
select result_id, marks
from greenwood_academy.exam_results
where marks >= 70;

-- Q18. Write a query to find all female students only. (Hint: gender = 'F')
select first_name, last_name, gender 
from greenwood_academy.students
where gender = 'F';

-- Q19. Write a query to find all students who are in Form 3 AND from Nairobi.
select first_name, last_name, class, city 
from greenwood_academy.students
where class = 'Form 3' and city = 'Nairobi';

-- Q20. Write a query to find all students who are in Form 2 OR Form 4.
select first_name, last_name, class 
from greenwood_academy.students
where class = 'Form 2' or class = 'Form 4';
