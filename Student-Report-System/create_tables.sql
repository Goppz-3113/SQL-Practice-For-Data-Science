-- Creating the STUDENTS table
CREATE TABLE students (              -- Creates a new table named 'students'
    id INT PRIMARY KEY,              -- 'id' is a number and uniquely identifies each student, A foreign key is used to connect one table to another.
    name VARCHAR(50),                -- 'name' stores text up to 50 characters
    age INT,                         -- 'age' stores the student's age as a number
    gender VARCHAR(10)               -- 'gender' stores text like 'M' or 'F'
);                                   -- End of table creation


-- Creating the MARKS table
CREATE TABLE marks (                 -- Creates a new table named 'marks'
    id INT PRIMARY KEY,              -- Unique ID for each marks entry
    student_id INT,                  -- Links the marks to a specific student
    marks INT,                       -- Stores the marks scored
    FOREIGN KEY (student_id)         -- Declares 'student_id' as a foreign key, A foreign key is used to connect one table to another.
        REFERENCES students(id)      -- Links it to 'id' column in the students table
);                                   -- End of table creation


-- Creating the COURSES table
CREATE TABLE courses (               -- Creates a table named 'courses'
    id INT PRIMARY KEY,              -- Unique ID for each course entry
    student_id INT,                  -- Student who is taking the course
    course VARCHAR(50),              -- Name of the course (text up to 50 chars)
    FOREIGN KEY (student_id)         -- Declares 'student_id' as a foreign key
        REFERENCES students(id)      -- Links it with 'id' in the students table
);                                   -- End of table creation


-- Creating the ATTENDANCE table
CREATE TABLE attendance (            -- Creates a table named 'attendance'
    id INT PRIMARY KEY,              -- Unique ID for each attendance entry
    student_id INT,                  -- Student whose attendance is recorded
    days_present INT,                -- Total number of days they were present
    FOREIGN KEY (student_id)         -- 'student_id' is a foreign key
        REFERENCES students(id)      -- Connects it to 'id' in the students table
);                                   -- End of table creation
