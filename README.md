
# 📘 Student Report System – SQL Mini Project

This project is part of my SQL learning journey and focuses on mastering SQL fundamentals used in real Data Science & Analytics roles.  
It includes database creation, inserting data, and writing queries involving **JOINs, GROUP BY, subqueries, and CASE WHEN**.

---

# 🔥 Why This Project?

- Builds strong SQL foundations  
- Demonstrates real analytical thinking  
- Perfect for interviews (Joins + Group By + Subqueries)  
- Easy to extend later  
- Great addition to a GitHub portfolio  

---

## 📂 Project Structure

```

Student-Report-System/
│
├── create_tables.sql
├── insert_data.sql
├── queries.sql
└── README.md

````

---

## 🧱 1. `create_tables.sql`

Creates four tables:

| Table      | Purpose              |
|------------|--------------------|
| students   | Student info       |
| marks      | Exam marks         |
| courses    | Courses enrolled   |
| attendance | Attendance summary |

---

## 📝 2. `insert_data.sql`

Contains sample data for 5 students, their marks, courses, and attendance.

---

## 🔍 3. `queries.sql`

Includes 10 analytical SQL queries showcasing:

### ✔ JOINs  
INNER JOIN between students, marks, attendance, and courses.

### ✔ Filtering  
`WHERE`, `BETWEEN`, `LIKE`, `IN`.

### ✔ Grouping  
`GROUP BY` + aggregate functions (`AVG()`, `SUM()`, `MAX()`).

### ✔ Subqueries  
Finding students above average marks.

### ✔ CASE Expressions  
Creating categories like:  
- Pass / Fail  
- Attendance Rating  
- Age Groups  

---

## 🔎 Example Query: Course-wise Average Marks

```sql
SELECT courses.course, AVG(marks.marks) AS avg_marks
FROM students
JOIN marks ON students.id = marks.student_id
JOIN courses ON students.id = courses.student_id
GROUP BY courses.course;
````

---

## 🎯 Skills Demonstrated

* SQL basics (`SELECT`, `WHERE`, `ORDER BY`)
* Aggregate functions
* JOINs (very important for DS jobs)
* Subqueries
* CASE WHEN logic
* Analytical problem solving

---

## 🚀 Future Improvements

* Add more students
* Add department table
* Add stored procedures
* Add SQL performance optimization

---

## 💡 Goal

This project is part of my SQL learning roadmap and will be updated weekly.
It helps me practice SQL concepts and build a solid GitHub portfolio.

