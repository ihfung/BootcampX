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
