create database AcademicPerformance;
GO
USE AcademicPerformance;
-- Table: semesters
CREATE TABLE semesters (
    semester_id INT PRIMARY KEY,
    name VARCHAR(20),
    sgpa FLOAT
);
GO

-- Table: subjects (using IDENTITY instead of AUTO_INCREMENT)
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    semester_id INT,
    credits FLOAT,
    grade VARCHAR(5),
    FOREIGN KEY (semester_id) REFERENCES semesters(semester_id)
);
GO

-- Table: summary
CREATE TABLE summary (
    total_credits FLOAT,
    cgpa FLOAT,
    percentage FLOAT
);
GO
INSERT INTO semesters (semester_id, name, sgpa) VALUES
(1, 'I Semester', 7.85),
(2, 'II Semester', 7.77),
(3, 'III Semester', 8.22),
(4, 'IV Semester', 7.72),
(5, 'V Semester', 7.53),
(6, 'VI Semester', 8.05),
(7, 'VII Semester', 7.39),
(8, 'VIII Semester', 10.00);
INSERT INTO summary (total_credits, cgpa, percentage) VALUES
(160.0, 7.91, 71.56);
-- Semester 1
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('Mathematics I', 1, 3.0, 'C'),
('Communicaitve english', 1, 3.0, 'C'),
('Engineering Drawing', 1, 3.0, 'A+'),
('ppsc', 1, 3.0, 'D'),
('applied chemistry', 1, 3.0, 'C'),
('English Lab', 1, 1.5, 'A'),
('PPSC lab', 1, 1.5, 'A+'),
('Applied Chemistry Lab', 1, 1.5, 'A');
-- Semester 2
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('Mathematics 2', 2, 3.0, 'B'),
('Applied Physics', 2, 3.0, 'B'),
('OOP through JAVA', 2, 3.0, 'B'),
('BEE', 2, 3.0, 'D'),
('Network Analysis', 2, 3.0, 'D'),
('Applied Physics Lab', 2, 1.5, 'A+'),
('Engineering Workshop', 2, 1.5, 'A'),
('BEE Lab', 2, 1.5, 'A+');
-- Semester 3
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('EDC', 3, 3.0, 'C'),
('STLD', 3, 3.0, 'B'),
('Signals and Systems', 3, 3.0, 'D'),
('RVSP', 3, 3.0, 'A+'),
('mathematics 3', 3, 3.0, 'E'),
('Community Service Project', 3, 4.0, 'A+'),
('OOPS lab', 3, 1.5, 'A+'),
('EDC lab', 3, 1.5, 'A'),
('Python Programming lab', 3, 2.0, 'A'),
('STLD Lab', 3, 1.5, 'A+');
-- Semester 4
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('ECA', 4, 3.0, 'C'),
('DICD', 4, 3.0, 'C'),
('Analog Communications', 4, 3.0, 'D'),
('LCS', 4, 3.0, 'C'),
('MOB', 4, 3.0, 'A'),
('Constitution of India', 4, 0.0, 'CO'),
('DICD lab', 4, 1.5, 'A+'),
('ECA lab', 4, 1.5, 'A+'),
('AC lab', 4, 1.5, 'A+'),
('Soft Skills lab', 4, 2.0, 'B');
-- Semester 5
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('AICA', 5, 3.0, 'D'),
('EMTL', 5, 3.0, 'D'),
('Digital Communications', 5, 3.0, 'D'),
('CAO', 5, 3.0, 'C'),
('RES', 5, 3.0, 'B'),
('Internship', 5, 1.5, 'A+'),
('ITK', 5, 0.0, 'CO'),
('DC lab', 5, 1.5, 'A+'),
('AICA lab', 5, 1.5, 'A+'),
('Data Structures through Java', 5, 1.5, 'A');
-- Semester 6
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('MPMC', 6, 3.0, 'C'),
('VLSI', 6, 3.0, 'B'),
('DSP', 6, 3.0, 'C'),
('MCC', 6, 3.0, 'B'),
('UEE', 6, 3.0, 'C'),
('RM', 6, 0.0, 'CO'),
('MPMC lab', 6, 1.5, 'A+'),
('VLSI lab', 6, 1.5, 'A'),
('DSP lab', 6, 1.5, 'A'),
('ARM LAB', 6, 2.0, 'A');
-- Semester 7
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('UHV', 7, 3.0, 'C'),
('PSC', 7, 3.0, 'D'),
('OC', 7, 3.0, 'C'),
('SC', 7, 3.0, 'D'),
('RE', 7, 3.0, 'C'),
('IIOT', 7, 3.0, 'C'),
('DT lab', 7, 2.0, 'A+'),
('Internship', 7, 3.0, 'A+');
-- Semester 8
INSERT INTO subjects (name, semester_id, credits, grade) VALUES
('PROJECT', 8, 8.0, 'A+');
