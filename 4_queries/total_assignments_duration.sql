SELECT assignments.day, COUNT(assignments.id) as number_of_assignments, SUM(assignments.duration) from assignments
GROUP BY assignments.day
ORDER BY assignments.day;