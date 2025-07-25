create database school_mangment;
use school_mangment;
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
) ENGINE=InnoDB;

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    subject_id INT,
    hire_date DATE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
) ENGINE=InnoDB;

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    section CHAR(1),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
) ENGINE=InnoDB;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
) ENGINE=InnoDB;

CREATE TABLE grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    score DECIMAL(5,2) CHECK (score >= 0 AND score <= 100),
    grade_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
) ENGINE=InnoDB;

-- 1. Insert into subjects (no dependencies)
INSERT INTO subjects (subject_name, description) VALUES
('Mathematics', 'Algebra and Geometry'),
('English', 'Literature and Grammar'),
('Science', 'Physics, Chemistry, Biology'),
('History', 'World and National History'),
('Computer Science', 'Programming and IT Basics');

-- 2. Insert into teachers (references subjects)
INSERT INTO teachers (first_name, last_name, email, phone, subject_id, hire_date) VALUES
('John', 'Smith', 'john.smith@school.com', '555-0101', 1, '2023-08-01'),
('Mary', 'Johnson', 'mary.johnson@school.com', '555-0102', 2, '2022-09-15'),
('Robert', 'Brown', 'robert.brown@school.com', '555-0103', 3, '2021-07-10'),
('Lisa', 'Davis', 'lisa.davis@school.com', '555-0104', 4, '2023-01-20'),
('Michael', 'Wilson', 'michael.wilson@school.com', '555-0105', 5, '2022-03-12'),
('Sarah', 'Taylor', 'sarah.taylor@school.com', '555-0106', 1, '2023-06-05'),
('David', 'Clark', 'david.clark@school.com', '555-0107', 2, '2021-11-30'),
('Emily', 'Lewis', 'emily.lewis@school.com', '555-0108', 3, '2022-08-25'),
('James', 'Walker', 'james.walker@school.com', '555-0109', 4, '2023-02-14'),
('Anna', 'Hall', 'anna.hall@school.com', '555-0110', 5, '2021-09-01');

-- 3. Insert into classes (references teachers)
INSERT INTO classes (class_name, section, teacher_id) VALUES
('Grade 9', 'A', 1),
('Grade 9', 'B', 2),
('Grade 10', 'A', 3),
('Grade 10', 'B', 4),
('Grade 11', 'A', 5),
('Grade 11', 'B', 6),
('Grade 12', 'A', 7),
('Grade 12', 'B', 8),
('Grade 9', 'C', 9),
('Grade 10', 'C', 10);

-- 4. Insert into students (references classes)
INSERT INTO students (first_name, last_name, date_of_birth, email, class_id) VALUES
('Alice', 'Adams', '2009-05-10', 'alice.adams@school.com', 1),
('Bob', 'Baker', '2009-07-15', 'bob.baker@school.com', 1),
('Clara', 'Chen', '2008-03-22', 'clara.chen@school.com', 3),
('Daniel', 'Evans', '2008-11-30', 'daniel.evans@school.com', 3),
('Emma', 'Foster', '2007-09-12', 'emma.foster@school.com', 5),
('Frank', 'Garcia', '2007-12-05', 'frank.garcia@school.com', 5),
('Grace', 'Hill', '2006-04-18', 'grace.hill@school.com', 7),
('Henry', 'Irwin', '2006-08-25', 'henry.irwin@school.com', 7),
('Isabella', 'Jones', '2009-02-14', 'isabella.jones@school.com', 9),
('Jack', 'King', '2008-06-20', 'jack.king@school.com', 10);

-- 5. Insert into grades (references students and subjects)
INSERT INTO grades (student_id, subject_id, score, grade_date) VALUES
(1, 1, 85.50, '2025-03-10'),
(1, 2, 78.00, '2025-03-10'),
(2, 1, 92.00, '2025-03-10'),
(3, 3, 88.75, '2025-03-11'),
(4, 3, 65.25, '2025-03-11'),
(5, 4, 90.00, '2025-03-12'),
(6, 4, 82.50, '2025-03-12'),
(7, 5, 95.00, '2025-03-13'),
(8, 5, 70.50, '2025-03-13'),
(9, 1, 87.25, '2025-03-14');




