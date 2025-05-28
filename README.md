# AcademicPerformanceDB 📊

This project contains a structured SQL script to create and populate a database that tracks academic performance across eight semesters. It includes semester-wise subject details, SGPA values, and an overall summary of CGPA and percentage.

## 📂 Project Structure

- **Database Name:** `AcademicPerformance`
- **Tables:**
  - `semesters`: Holds semester IDs, names, and SGPA scores.
  - `subjects`: Lists all subjects taken, associated with each semester, along with credits and grades.
  - `summary`: Stores total credits, CGPA, and overall percentage.

## 📄 File

- `AcademicPerformanceDb.sql`: Full SQL script including:
  - Database and table creation
  - Foreign key constraints
  - Data insertion for each semester
  - Summary information

## ✅ How to Use

1. Open your preferred SQL Server tool (e.g., SSMS).
2. Run the script in `AcademicPerformanceDb.sql`.
3. The database `AcademicPerformance` will be created with all tables and data.

## 🚀 Use Cases

- Academic result visualization
- Student progress tracking system
- CGPA & SGPA analytics

## 📌 Notes

- This database was created as a sample project to learn SQL and relational database design.
- Grades are stored as strings and not mapped to grade points — feel free to extend!

## 🧑‍💻 Author

[Venkatanarayana Batthi](https://github.com/Venkatanarayana-batthi)

---
