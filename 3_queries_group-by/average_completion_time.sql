SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duration
  FROM assignment_submissions
  JOIN students on students.id = student_id
  JOIN assignments on assignments.id = assignment_id
  WHERE students.end_date IS NULL
  GROUP BY students.name
  ORDER BY average_assignment_duration DESC;