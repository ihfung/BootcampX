SELECT DISTINCT teachers.name, cohorts.name, COUNT(assistance_requests.*) as number_of_assistances
from assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name; 