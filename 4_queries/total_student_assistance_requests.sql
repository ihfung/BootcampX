SELECT students.name, count(assistance_requests.*) as total_assistances 
from assistance_requests 
join students on assistance_requests.student_id = students.id 
WHERE students.name = 'Elliot Dickinson' 
GROUP BY students.name;