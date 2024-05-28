SELECT DISTINCT teachers.name, cohorts.name 
from assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name; 

--DISTINCT eliminates all duplicates record from the result returned by the sql query.