const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
  
});

//Name of Teachers That Assisted
pool
  .query(
    `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
from assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teachers.name; 
`
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.cohort}: ${user.teacher}`
      );
    });
  })
  .catch((err) => console.error("query error", err.stack));
