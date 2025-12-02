### students

| id | name | age | gender |
|----|------|-----|--------|
| 1  | John | 20  | M      |
| 2  | Sara | 21  | F      |
| 3  | Mike | 22  | M      |


### marks

| student_id | marks |
|-----------|------|
| 1         | 85   |
| 2         | 90   |
| 3         | 75   |


### courses

| student_id | course  |
|-----------|--------|
| 1         | Math   |
| 2         | Physics|
| 3         | CS     |



#=== INNER JOIN =====#

SELECT students.name, students.age, students.gender, marks.marks  
FROM students                                                      # the students.name means the name colomn from the student table, same for marks.marks i.e marks colomn from marks table
INNER JOIN marks                       # joins the student details and marks together  
ON students.id = marks.student_id;     # Match student name with their marks using their ID and show them together.                              

  
  #=== JOIN with 3 tables =====#

SELECT students.name, students.gender, marks.marks, courses.course
FROM students
JOIN marks
ON students.id = marks.student_id
JOIN courses 
ON students.id = courses.student_id;


#=== Filter after JOIN =====#
  
SELECT students.name, marks.marks, courses.course
FROM students
JOIN marks
ON students.id = marks.student_id
JOIN courses
ON students.id = courses.student_id
WHERE marks.marks > 80;   # shows only students with marks greater than 80

#=== GROUP + JOIN =====#

SELECT courses.course, AVG(marks.marks) AS avg_marks  # AS is just used to create a new colomn name
FROM students
JOIN marks ON students.id = marks.student_id
JOIN courses ON students.id = courses.student_id
GROUP BY courses.course;   # This works as putting all students who study Math together, Physics together, CS together, then find the average marks for each group












