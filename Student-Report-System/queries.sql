-- Selecting student name and marks
SELECT students.name, marks.marks      -- Choose the columns to display

FROM students                          -- First table: students
JOIN marks                             -- Join with marks table
    ON students.id = marks.student_id; -- Match student by ID (foreign key link)

## JOIN is used to combine rows from two tables where the condition matches.
## Students.id = marks.student_id means: get marks for the correct student.

--Find students with marks > 80

SELECT name, marks                     -- Selecting required columns

FROM students s                        -- 's' is an alias for students
JOIN marks m                           -- 'm' is alias for marks
    ON s.id = m.student_id             -- Join condition

WHERE m.marks > 80;                    -- Filter only marks greater than 80

##Aliases (s, m) make code shorter and easier to read.
## WHERE filters rows based on conditions.

  
--Average marks in each course

SELECT course, AVG(marks) AS avg_marks -- Use AVG() to find average marks

FROM marks
JOIN courses 
    ON marks.student_id = courses.student_id  -- Link marks to courses

GROUP BY course;                         -- Group results for each course


## AVG() is an aggregate function.
## GROUP BY collects rows with the same course name.

--Gender-wise average marks

SELECT gender, AVG(marks) AS avg_marks
FROM students
JOIN marks ON students.id = marks.student_id
GROUP BY gender;

--Highest scoring student

SELECT name, marks
FROM students
JOIN marks ON students.id = marks.student_id
ORDER BY marks DESC     -- Sort highest marks first
LIMIT 1;                  -- Pick only the top result

--Attendance performance (Case When)

SELECT name, days_present,

CASE                                       -- Start conditional logic
    WHEN days_present >= 25 THEN 'Excellent'
    WHEN days_present >= 20 THEN 'Good'
    ELSE 'Poor'
END AS attendance_status                   -- New column name

FROM students
JOIN attendance ON students.id = attendance.student_id;


--Mark students Pass/Fail

SELECT name, marks,
CASE
    WHEN marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students
JOIN marks ON students.id = marks.student_id;

--Students above Avg marks

SELECT name, marks
FROM students
JOIN marks ON students.id = marks.student_id
WHERE marks > (SELECT AVG(marks) FROM marks);    -- Subquery calculates overall avg

## Subquery returns a value (average marks).
## Outer query uses it to filter students.

--Course-wise topper

SELECT c.course, s.name, m.marks
FROM marks m
JOIN students s ON m.student_id = s.id
JOIN courses c ON m.student_id = c.student_id
WHERE m.marks = (
    SELECT MAX(m2.marks)
    FROM marks m2
    JOIN courses c2 ON m2.student_id = c2.student_id
    WHERE c2.course = c.course
);

##  Subquery finds maximum marks for each course.
## Main query finds which student got that mark.

--Age group category

SELECT name, age,
CASE
    WHEN age >= 22 THEN 'Senior'
    ELSE 'Junior'
END AS age_group
FROM students;

## Adds a new virtual column based on age condition.




