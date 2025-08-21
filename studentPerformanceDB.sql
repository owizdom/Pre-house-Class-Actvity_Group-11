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
