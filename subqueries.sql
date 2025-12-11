==== Student with highest marks ====
  
SELECT *
FROM students
WHERE marks = (SELECT MAX(marks) FROM students);

==== Students above class average ====
  
SELECT *
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

==== Students whose marks are above their gender average ===
SELECT *
FROM students s
WHERE marks > (
    SELECT AVG(marks)
    FROM students
    WHERE gender = s.gender  # s.gender = gender from outer query student , gender= gender inside subquery student list
);                           # s is just a shortcut name  for the table students
                 
