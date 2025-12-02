-- 
SELECT age, COUNT(*)   #Group students by age and gives the count
FROM students
GROUP BY age;

-- 
SELECT gender, COUNT(*)    # Group students by gender and gived the count
FROM students
GROUP BY gender;

-- 
SELECT age, AVG(marks)   #Average marks by age
FROM students
GROUP BY age;

-- 
SELECT age, AVG(marks)  #Only show high scoring age groups
FROM students
GROUP BY age
HAVING AVG(marks) > 75;

