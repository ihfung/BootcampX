SELECT count(assistance_requests.*) as total_assistances, teachers.name from assistance_requests join teachers on assistance_requests.teacher_id = teachers.id WHERE name = 'Waylon Boehm' GROUP BY teachers.name;

