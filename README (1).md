# Medical Data History — SQL Project

## Project Overview

The **Medical Data History** project uses SQL to retrieve, organise, update, and analyse healthcare data. The project works with patient details, allergy information, admission history, doctor details, and province reference data.

The SQL implementation addresses the 34 tasks in the project requirements and demonstrates practical relational database querying techniques.

## Project Objectives

- Retrieve patient information using filters such as gender, name, birth date, height, weight, and patient ID.
- Identify missing allergy information and update blank or `NULL` allergy values.
- Combine patient, province, admission, and doctor information using joins.
- Calculate counts, grouped totals, sums, minimums, and maximums.
- Apply SQL string, date, mathematical, and conditional functions.
- Identify repeated patient-diagnosis combinations and selected diagnosis records.

## Database Details

**Database name:** `medical_data`

The submitted SQL script uses these tables:

| Table | Description |
|---|---|
| `patientsdata` | Patient demographics, allergies, height, weight, and province information |
| `admissiondata` | Admission dates, discharge dates, diagnoses, patient IDs, and attending doctor IDs |
| `doctordata` | Doctor names and medical specialties |
| `provincedata2` | Province identifiers and province names |

### Table Relationships

- `patientsdata.patient_id` connects patients to their admission records.
- `patientsdata.province_id` connects patients to province information.
- `admissiondata.attending_doctor_id` connects admissions to `doctordata.doctor_id`.

## SQL Concepts Used

The project demonstrates:

- `SELECT`, `WHERE`, and comparison operators
- `IS NULL`, `TRIM()`, and `UPDATE`
- `LIKE` and wildcard pattern matching
- `CONCAT()`, `UPPER()`, `LOWER()`, and `LENGTH()`
- `DISTINCT` and `ORDER BY`
- `GROUP BY` and `HAVING`
- Aggregate functions: `COUNT()`, `SUM()`, `MAX()`, and `MIN()`
- `JOIN` and table aliases
- Subqueries and `UNION`
- `CASE` expressions
- Date functions: `YEAR()` and `DAY()`
- Mathematical functions: `FLOOR()` and `POWER()`

## Project Tasks

The SQL script covers these task areas:

1. Retrieve male patient details.
2. Find patients with missing allergy information.
3. Search first names beginning with a specified letter.
4. Filter patients by a weight range.
5. Update missing allergy values to `NKA`.
6. Combine first and last names.
7. Join patient and province information.
8. Count patients born in a selected year.
9. Find the tallest patient or patients.
10. Retrieve records for specified patient IDs.
11. Count all admission records.
12. Find same-day admissions and discharges.
13. Count admissions for a selected patient.
14. List unique cities in a selected province.
15. Filter patients by height and weight.
16. List unique birth years in ascending order.
17. Find first names that occur once.
18. Search names by starting letter, ending letter, and length.
19. Find patients with a specified diagnosis.
20. Sort first names by length and alphabetically.
21–22. Calculate male and female patient totals.
23. Find repeated patient-diagnosis combinations.
24. Count patients by city.
25. Combine patient and doctor names with role labels.
26. Summarise allergy frequency.
27. Retrieve patients born in the 1970s.
28. Format names and sort by first name.
29. Calculate total patient height by province.
30. Calculate the weight range for a selected surname.
31. Count admissions by day of the month.
32. Group patients into weight bands.
33. Calculate an obesity indicator using BMI.
34. Find Epilepsy admissions associated with a doctor named Lisa.

## How to Run the Project

1. Install or open a MySQL-compatible database client.
2. Load the medical dataset tables into your database environment.
3. Open `Medical_Data_History_SQL_Project.sql`.
4. Execute the SQL script in the intended database.
5. Review the result of each query and compare it with the project requirements.

## Repository Files

```text
Medical-Data-History-SQL/
├── Medical_Data_History_SQL_Project.sql
├── Medical_Data_History_Detailed_Project_Report.docx
└── README.md
```

## Project Report

The detailed project report explains the project introduction, objectives, database structure, SQL concepts, all 34 tasks, query implementation logic, workflow, testing approach, and conclusion.

## Note

The README and report describe the submitted SQL implementation. Query results depend on the dataset and database environment used to run the script.
