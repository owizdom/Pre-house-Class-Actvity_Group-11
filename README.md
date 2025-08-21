# Student Performance Database – ALU Rwanda  

## Project Overview  
This project is a **pre-class activity** for ALU Rwanda students, designed to practice **MySQL database design and querying skills**.  

The goal is to build a **Student Performance Database** that tracks and analyzes grades of students enrolled in **Linux** and **Python** courses. It demonstrates how to:  
- Create normalized relational database tables.  
- Insert sample data.  
- Use SQL queries (`JOIN`, `UNION`, subqueries, aggregations) to extract meaningful insights.  
- Identify weak and strong performers, course participation, and compute averages.  

The project will be orally defended (viva) with coaches after submission.  

---

##  Database Schema  

The database consists of **three tables**:  

1. **`students`** – Stores student personal info.  
   ```sql
   students(student_id, student_name, intake_year)
   ```
2. linux_grades – Stores grades for Linux course.
```
  linux_grades(course_id, course_name, student_id, grade_obtained)
```
3. python_grades – Stores grades for Python course.
```sql
python_grades(course_id, course_name, student_id, grade_obtained)
```
--

```
## Entity Relationship Diagram (ERD):

   students
   +-------------+
   | student_id  |<-------------------+
   | name        |                    |
   | intake_year |                    |
   +-------------+                    |
                                      |
   linux_grades                       |   python_grades
   +-------------+                    |   +-------------+
   | course_id   |                    |   | course_id   |
   | course_name |                    |   | course_name |
   | student_id  |--------------------+   | student_id  |
   | grade       |                        | grade       |
   +-------------+                        +-------------+
````
--

