-- Section E: COUNT
-- Name : Judy Mokaya
-- Date: 17-07-2026
-- =====================================================

-- Q27. How many students are currently in Form 3? Write the query.
select count(*) as form3_students
from greenwood_academy.students
where class = 'Form 3';

-- Q28. How many exam results have a mark of 70 or above? Write the query.
select count(*) as num_pass_marks
from greenwood_academy.exam_results
where marks >= 70;

