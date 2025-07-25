
# School Management System Databas

**overview**

The School Management System Database is a MySQL-based relational database designed to manage core academic and administrative functions of a school. It organizes data related to subjects, teachers, classes, students, and grades, enabling efficient tracking of student performance, teacher assignments, and class management. The database uses the InnoDB engine to enforce referential integrity through foreign key constraints.


![Logo](https://smartstudent.app/media/2022/09/managment-software.png)

Figure 1: Conceptual overview of the School Management System Database.

**Database Schema**

The database consists of five tables with relationships defined by foreign keys, as shown in the Entity-Relationship Diagram (ERD) below.


![Logo](C:\Users\potth\OneDrive\Documents\sql files\school_mangment_database\Screenshot 2025-07-24 111237)

**Tables**

**1.subjects**

 **Purpose:**
 Stores information about academic subjects offered by the school.

 **Columns:**

subject_id (INT, Primary Key, Auto-increment): Unique identifier for each subject.



subject_name (VARCHAR(50), Unique): Name of the subject (e.g., Mathematics).



description (TEXT): Optional description of the subject content.

**Constraints:**
subject_name must be unique to prevent duplicate subjects.
