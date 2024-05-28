SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) as average_estimated_duration from assignment_submissions JOIN assignments on assignments.id = assignment_id JOIN students ON students.id = student_id where students.end_date is null group by students.name having AVG(assignment_submissions.duration) < AVG(assignments.duration) order by average_assignment_duration;