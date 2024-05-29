const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
  
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`];

//Name of Teachers That Assisted
pool
  .query(
    `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
from assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1
ORDER BY teachers.name; 
`, values
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.cohort}: ${user.teacher}`
      );
    });
  })
  .catch((err) => console.error("query error", err.stack));
