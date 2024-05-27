SELECT name, email, id, cohort_id from students where email not like '%gmail%';

select name, id, email, cohort_id from students where email not like '%gmail%' and phone is null;