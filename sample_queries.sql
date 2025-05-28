-- 1. View all semesters with SGPA
SELECT * FROM semesters;

-- 2. View all subjects for a specific semester (e.g., Semester 1)
SELECT * FROM subjects
WHERE semester_id = 1;

-- 3. Total number of subjects per semester
SELECT semester_id, COUNT(*) AS subject_count
FROM subjects
GROUP BY semester_id;

-- 4. Total credits per semester
SELECT semester_id, SUM(credits) AS total_credits
FROM subjects
GROUP BY semester_id;

-- 5. Average SGPA across all semesters
SELECT AVG(sgpa) AS average_sgpa
FROM semesters;

-- 6. List all subjects with grade A+ or A
SELECT name, grade, semester_id
FROM subjects
WHERE grade IN ('A', 'A+');

-- 7. Count of subjects with each grade
SELECT grade, COUNT(*) AS count
FROM subjects
GROUP BY grade
ORDER BY count DESC;

-- 8. List subjects with 0 credits (like Constitution of India)
SELECT name, semester_id
FROM subjects
WHERE credits = 0;

-- 9. View summary table
SELECT * FROM summary;

-- 10. Compare CGPA with average SGPA
SELECT
    (SELECT AVG(sgpa) FROM semesters) AS avg_sgpa,
    (SELECT cgpa FROM summary) AS cgpa;

-- 11. Get total credits earned by grade (excluding 0-credit subjects)
SELECT grade, SUM(credits) AS credits_earned
FROM subjects
WHERE credits > 0
GROUP BY grade
ORDER BY credits_earned DESC;

-- 12. List all lab subjects (assuming "lab" in name)
SELECT * FROM subjects
WHERE name LIKE '%lab%';

-- 13. List all internship or project-based subjects
SELECT * FROM subjects
WHERE name LIKE '%Internship%' OR name LIKE '%Project%';

-- 14. Top 3 semesters with highest SGPA
SELECT name, sgpa
FROM semesters
ORDER BY sgpa DESC
LIMIT 3;

-- 15. Subjects where the student got lowest grades (e.g., D or E)
SELECT name, grade, semester_id
FROM subjects
WHERE grade IN ('D', 'E');

-- 16. Semesters with SGPA below average
SELECT *
FROM semesters
WHERE sgpa < (SELECT AVG(sgpa) FROM semesters);

-- 17. Total credits and SGPA together per semester
SELECT s.semester_id, s.name, s.sgpa, SUM(sb.credits) AS total_credits
FROM semesters s
JOIN subjects sb ON s.semester_id = sb.semester_id
GROUP BY s.semester_id, s.name, s.sgpa
ORDER BY s.semester_id;

-- 18. Count of theory vs. lab courses (basic logic using name patterns)
SELECT
    SUM(CASE WHEN name LIKE '%lab%' THEN 1 ELSE 0 END) AS lab_courses,
    SUM(CASE WHEN name NOT LIKE '%lab%' THEN 1 ELSE 0 END) AS theory_courses
FROM subjects;

-- 19. Find any duplicate subject names (just in case)
SELECT name, COUNT(*) AS count
FROM subjects
GROUP BY name
HAVING COUNT(*) > 1;

-- 20. List all unique grades used
SELECT DISTINCT grade
FROM subjects;
