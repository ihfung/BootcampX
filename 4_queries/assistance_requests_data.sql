SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration 
from assistance_requests 
JOIN teachers on teachers.id = assistance_requests.teacher_id 
JOIN students on students.id = assistance_requests.student_id 
JOIN assignments on assignments.id = assistance_requests.assignment_id 
ORDER by duration;