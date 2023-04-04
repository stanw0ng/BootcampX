SELECT cohorts.name as cohort_name, count(assignment_submissions.*) AS total_submissions
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name; /* better to use column name rather than alias to reduce ambiguity */ 
  ORDER BY total_submissions DESC