SELECT * FROM students;           # Show all data from students

SELECT name FROM students;        #Show only the names of students

SELECT * FROM students            #Show students who are 20 years old
WHERE age = 20;

SELECT * FROM students           # Show students with marks above 85
WHERE marks > 85;

SELECT * FROM students            # Arrange students by marks (highest first)
ORDER BY marks DESC;

SELECT COUNT(*) FROM students;     #Total number of students

SELECT AVG(marks) FROM students;    # Average marks of students

SELECT age, COUNT(*)               #Number of students in each age group
FROM students
GROUP BY age;


