-- Section F: CASE WHEN
-- Name : Judy Mokaya
-- Date: 17-07-2026
-- =====================================================

/*
 * Q29. Write a query using CASE WHEN to label each exam result with a grade description:
•	'Distinction' if marks >= 80
•	'Merit' if marks >= 60
•	'Pass' if marks >= 40
•	'Fail' if marks below 40
Call the new column performance.
 */
select marks,
case 
	when marks < 40 then 'Fail'
	when marks between 40 and 59 then 'Pass'
	when marks between 60 and 79 then 'Merit'
	else 'Distinction'
end as performance
from greenwood_academy.exam_results
order by marks;

/*Q30. Write a query using CASE WHEN to label each student as:
•	'Senior' if they are in Form 3 or Form 4
•	'Junior' if they are in Form 2 or Form 1
Call the new column student_level. Show the student's first name, last name, class, and student_level in your result.
*/
select first_name, last_name, class,
case 
	when class in ('Form 3', 'Form 4') then 'Senior'
	when class in ('Form 2', 'Form 1') then 'Junior'
end as student_level
from greenwood_academy.students
order by class;
