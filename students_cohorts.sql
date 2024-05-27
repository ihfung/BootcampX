CREATE ROLE development LOGIN SUPERUSER PASSWORD 'development';
CREATE DATABASE development;
\q
CREATE DATABASE test_db;
\c test_db;
CREATE TABLE famous_people (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birthdate DATE
);
INSERT INTO famous_people (first_name, last_name, birthdate)
  VALUES ('Abraham', 'Lincoln', '1809-02-12');
INSERT INTO famous_people (first_name, last_name, birthdate)
  VALUES ('Mahatma', 'Gandhi', '1869-10-02');
INSERT INTO famous_people (first_name, last_name, birthdate)
  VALUES ('Paul', 'Rudd', '1969-04-06');
INSERT INTO famous_people (first_name, last_name, birthdate)
  VALUES ('Paul', 'Giamatti', '1967-06-06');
SELECT * FROM FAMOUS_PEOPLE
SELECT * FROM famous_people;
SELECT * FROM famous_people;
SELECT * FROM famous_people WHERE birthdate = "1920-01-01";
SELECT * FROM famous_people WHERE birthdate = '1920-01-01';
SELECT * FROM famous_people WHERE birthdate < '1920-01-01';
SELECT * FROM FAMOUS_PEOPLE WHERE FIRST_NAME = 'Paul';
CREATE DATABASE bootcampx;
\c bootcampx;
\i migrations/students_cohorts.sql
\i migrations/students_cohorts.sql
\q
\c bootcampx
\s students_cohorts.sql

/*
An OUTER JOIN will join the tables similarly to an INNER JOIN but will return all results for one of the tables, even when the join condition is not met. For any row where the condition was not met, a row is added with NULL data.

This is where the LEFT, RIGHT, and FULL, come in. We use these to specify which table should have all of its rows returned, regardless of the condition being met.

1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;
The first query will return all students because students is to the LEFT of the word JOIN.
The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
The third query will return all rows from both tables, even when there is no match.

An INNER JOIN will only return results where there is a match between the two tables.
An OUTER JOIN will do the same as an INNER JOIN but also returns unmatched rows in one or both tables. An OUTER JOIN can be LEFT, RIGHT, or FULL.

*/

SELECT students.name as Student_name, students.start_date as Start_date, cohorts.name as Cohort_name, cohorts.start_date as Cohort_start_date FROM students JOIN cohorts ON cohort_id = cohorts.id WHERE students.start_date != cohorts.start_date order by cohorts.start_date;
