SELECT count(*) from students where cohort_id = '1' or cohort_id = '2' or cohort_id = '3';

SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);