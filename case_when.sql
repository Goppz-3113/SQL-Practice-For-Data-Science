"Case when"  works same like the if- else operator, "CASE WHEN" must come after SELECT columns
When you write a CASE expression, SQL creates a brand-new column (like “pass/fail”, “grade”, “age group”…).
That new column must have a name.Without a name, SQL doesn’t know what to call it. so that is why we use AS operator at the end of each case when to give a name for the new colomn


  ==== Pass/Fail classification ====
SELECT name, marks,
CASE
    WHEN marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students;


==== Grade assignment ====
SELECT name, marks,
CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    ELSE 'C'
END AS grade
FROM students;


==== Age group categorization  ====
SELECT name, age,
CASE
    WHEN age >= 22 THEN 'Senior'
    WHEN age >= 21 THEN 'Mid'
    ELSE 'Junior'
END AS age_group
FROM students;

