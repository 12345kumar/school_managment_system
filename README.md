
# School Management System Databas

**overview**

The School Management System Database is a MySQL-based relational database designed to manage core academic and administrative functions of a school. It organizes data related to subjects, teachers, classes, students, and grades, enabling efficient tracking of student performance, teacher assignments, and class management. The database uses the InnoDB engine to enforce referential integrity through foreign key constraints.
<p align="center">
<img src="https://smartstudent.app/media/2022/09/managment-software.png" alt="Example Diagram" width="500" align='center'>
</p>
Figure 1: Conceptual overview of the School Management System Database.

**Database Schema**

The database consists of five tables with relationships defined by foreign keys, as shown in the Entity-Relationship Diagram (ERD) below.

<p align="center">
<img src="https://github.com/12345kumar/school_managment_system/blob/main/school_mangment_database/Screenshot%202025-07-24%20111237.png?raw=true" alt="Example Diagram" width="300" align='center'>
</p>

**Tables**

**1.subjects**

<p align="center">
<img src="https://www.shutterstock.com/image-vector/cute-colourful-doodle-set-school-600nw-2505142503.jpg" width="300" align='center'>
</p>

 **Purpose:**
 Stores information about academic subjects offered by the school.

 **Columns:**

<mark>subject_id (INT, Primary Key, Auto-increment)</mark>: Unique identifier for each subject.



<mark>subject_name (VARCHAR(50), Unique</mark>): Name of the subject (e.g., Mathematics).



<mark>description (TEXT):</mark>) Optional description of the subject content.

**Constraints:**
subject_name must be unique to prevent duplicate subjects.


**2 teachers**

<p align="center">
<img src="https://www.shutterstock.com/image-vector/indian-teacher-talking-students-lady-600nw-2296128709.jpg" width="300" align='center'>
</p>



**Purpose:** Stores teacher profiles and their assigned subjects.



**Columns:**





<mark>teacher_id (INT, Primary Key, Auto-increment):</mark> Unique identifier.



<mark>first_name (VARCHAR(50)):</mark> Teacher’s first name.



<mark>last_name (VARCHAR(50)):</mark> Teacher’s last name.



<mark>email (VARCHAR(100), Unique):</mark> Teacher’s email.



<mark>phone (VARCHAR(15)):</mark> Teacher’s phone number (optional).



<mark>subject_id (INT):</mark> Subject taught.



<mark>hire_date (DATE):</mark>Date hired.


**Foreign Key:**
<mark>subject_id references subjects(subject_id)</mark> .


**3.classes**


<p align="center">
<img src="https://media.istockphoto.com/id/509247782/vector/school-lesson-little-students-and-teacher.jpg?s=612x612&w=0&k=20&c=2_sbazgjd6Vs-GZjgF-YNptVpJRgM3NFzj78nhJngoA=" width="300" align='center'>
</p>


**Purpose:**
Stores class information and assigned teachers.



**Columns:**





<mark>class_id (INT, Primary Key, Auto-increment):</mark> Unique identifier.



<mark>class_name (VARCHAR(50)):</mark> Class name (e.g., Grade 9).



<mark>section (CHAR(1)):</mark> Class section (e.g., A).



<mark>teacher_id (INT):</mark> Assigned teacher.


**Foreign Key:**
<mark>teacher_id references teachers(teacher_id).</mark>

**4.students**


<p align="center">
<img src="https://thumb.ac-illust.com/6c/6c569a425751691849cf9081a6573ac3_t.jpeg" width="300" align='center'>
</p>


**Purpose:**
Stores student profiles and their assigned classes.



**Columns:**





<mark>student_id (INT, Primary Key, Auto-increment):</mark> Unique identifier.



<mark>first_name (VARCHAR(50)):</mark> Student’s first name.



<mark>last_name (VARCHAR(50)): </mark>Student’s last name.



<mark>date_of_birth (DATE):</mark> Student’s date of birth.



<mark>email (VARCHAR(100), Unique):</mark> Student’s email.



<mark>class_id (INT):</mark> Assigned class.


**Foreign Key:**
<mark>class_id references classes(class_id).</mark>


**5.grades**

<p align="center">
<img src="https://cbx-prod.b-cdn.net/COLOURBOX34296566.jpg?width=800&height=800&quality=70" width="300" align='center'>
</p>




**Purpose:** 
Stores student grades for subjects.



**Columns:**





<mark>grade_id (INT, Primary Key, Auto-increment):</mark> Unique identifier.



<mark>student_id (INT):</mark> Student receiving the grade.



<mark>subject_id (INT):</mark> Subject for the grade.



<mark>score (DECIMAL(5,2)):</mark> Grade score (0 to 100).



<mark>grade_date (DATE):</mark> Date recorded.



**Constraints:**
score between 0 and 100.



**Foreign Keys:**





<mark>student_id references students(student_id).</mark>



<mark>subject_id references subjects(subject_id).</mark>



