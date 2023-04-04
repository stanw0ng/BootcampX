SELECT count(assistance_requests.*) AS total_assistances, students.name AS name
  FROM assistance_requests
  JOIN students
  ON student_id = students.id
  WHERE students.name = 'Elliot Dickinson'
  GROUP by students.name; /* final line because count is aggregate function */