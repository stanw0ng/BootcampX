SELECT count(assistance_requests.*) AS total_assistances, teachers.name AS name
  FROM assistance_requests
  JOIN teachers
  ON teacher_id = teachers.id
  WHERE teachers.name = 'Waylon Boehm'
  GROUP by teachers.name; /* final line because count is aggregate function */