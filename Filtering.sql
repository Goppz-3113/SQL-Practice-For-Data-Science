
SELECT * FROM students          #checks both the statements and runs only if both are true
WHERE age = 20 AND marks > 80;


SELECT * FROM students        # either one of the statement must be true
WHERE age = 19 OR age = 22;


SELECT * FROM students           # in the middle of the two numbers or range
WHERE marks BETWEEN 70 AND 90;


SELECT * FROM students        # in is an alternative for OR, when there is a need of multiple OR statement
WHERE age IN (19, 21);


SELECT * FROM students    # same as cheking the equivalancy of the text, here a% means text starting with the letter "a"
WHERE name LIKE 'A%';


SELECT * FROM students       #  %a means text that ends with the letter "a"
WHERE name LIKE '%a';


SELECT * FROM students
WHERE name LIKE '%a%';     # text that containing the letter "a"

SELECT age, AVG(marks)   # we cant use where with grouped data so we use having
FROM students
GROUP BY age
HAVING AVG(marks) > 80;


