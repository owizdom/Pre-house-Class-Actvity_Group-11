-- =========================================
-- Student Performance Database - ALU Rwanda
-- =========================================

-- Drop tables if they already exist (for re-runs)
DROP TABLE IF EXISTS python_grades;
DROP TABLE IF EXISTS linux_grades;
DROP TABLE IF EXISTS students;

-- =====================
-- Create students table
-- =====================
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    intake_year INT NOT NULL
);

-- =========================
-- Create linux_grades table
-- =========================
CREATE TABLE linux_grades (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) DEFAULT 'Linux',
    student_id INT,
    grade_obtained DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- ==========================
-- Create python_grades table
-- ==========================
CREATE TABLE python_grades (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) DEFAULT 'Python',
    student_id INT,
    grade_obtained DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- ==========================================
-- Insert sample students (at least 15 total)
-- ==========================================

INSERT INTO students (student_name, intake_year) VALUES
('Okechukwu Wisdom', 2025),
('Lennie Ishimwele', 2025),
('Nawaf Ahmad', 2025),
('Cyuzuzuo Germain', 2025),
('Willy Tech', 2025),
('Divin Bonheur', 2025),
('Grace Jafar', 2025),
('Henry Maduabuchi', 2025),
('Isabella Victor', 2025),
('Blessing Okechukwu', 2025),
('James John', 2025),
('Naruto John', 2025),
('Lee Chan', 2025),
('Sam Altman', 2025),
('Charles Daniel', 2025);

-- ==================================
-- Insert Linux course sample grades
-- ==================================
INSERT INTO linux_grades (student_id, grade_obtained) VALUES
