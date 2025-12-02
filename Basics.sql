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

SELECT MAX(marks) FROM students;    # Find the highest marks

SELECT MIN(marks) FROM students;     # Find the lowest marks

SELECT age, AVG(marks)           #Average marks for each age group
FROM students
GROUP BY age;

SELECT * FROM students          #Female students only
WHERE gender = 'F';


SELECT * FROM students        #Students who scored below 70
WHERE marks < 70;

SELECT * FROM students       #Top 3 students by marks
ORDER BY marks DESC
LIMIT 3;


SELECT gender, COUNT(*)    #Count number of male and female students
FROM students
GROUP BY gender;


SELECT AVG(marks)         #Average marks of 20 year olds
FROM students
WHERE age = 20;

SELECT DISTINCT age   # show only unique ages for example If 10 students are 20 years old, it will show 20 only once.
FROM students;





