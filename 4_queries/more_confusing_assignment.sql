SELECT assignments.id, assignments.day, assignments.chapter, count(assistance_requests.*) 
from assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id, assignments.day, assignments.chapter
ORDER BY count(assistance_requests.*) DESC;
