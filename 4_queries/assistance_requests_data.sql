SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - assistance_requests.started_at) AS duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN teachers ON teacher_id = teachers.id
  LEFT JOIN assignments ON assignment_id = assignments.id /*Left join for 26299 rows because some assignment ids are null in table, the total in compass is 26299 but it really should 20214 */
  ORDER BY duration;