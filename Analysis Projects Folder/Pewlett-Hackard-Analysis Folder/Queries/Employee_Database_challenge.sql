--Challenge sql queries:

--Deliverable #1:
SELECT emp_no, first_name, last_name
FROM Employees;

SELECT title, from_date, to_date
FROM Titles;

--INTO retirement_titles
SELECT Employees.emp_no,
Employees.first_name, 
Employees.last_name,
Titles.title, 
Titles.from_date, 
Titles.to_date
INTO retirement_titles
FROM Employees
INNER JOIN Titles
ON Employees.emp_no = Titles.emp_no
WHERE (birth_date BETWEEN '1/1/52' AND '12/31/55')
ORDER BY emp_no;

SELECT * FROM retirement_titles;
DROP TABLE retirement_titles;

--NOTE: Use the following instructions to remove these duplicates and
--keep only the most recent title of each employee.
SELECT emp_no, first_name, last_name, title
FROM retirement_titles;
--8.) Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--15.) retrieve the number of employees by their most 
--recent job title who are about to retire.
SELECT COUNT(title) AS count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM unique_titles;

--Deliverabe 2:Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (Employees.emp_no) Employees.emp_no,
Employees.first_name,
Employees.last_name,
Employees.birth_date,
Dept_emp.from_date,
Dept_emp.to_date,
Titles.title
INTO mentorship_eligibility
FROM Employees
INNER JOIN dept_emp
	ON (Employees.emp_no = dept_emp.emp_no)
INNER JOIN Titles
	ON (Employees.emp_no = Titles.emp_no)
WHERE (dept_emp.to_date = '9999-01-01') 
AND (Employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY Employees.emp_no;
