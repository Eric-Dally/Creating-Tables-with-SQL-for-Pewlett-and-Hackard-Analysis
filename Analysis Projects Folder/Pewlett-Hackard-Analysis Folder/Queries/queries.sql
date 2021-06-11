queries.

CREATE TABLE dept_emp (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_emp;

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR (40) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY(emp_no, title, from_date)
);

SELECT * FROM titles;

SELECT * FROM employees;

SELECT first_name, last_name FROM employees
WHERE birth_date BETWEEN '1/1/52' AND '12/31/55';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/52' AND '12/31/52';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1/1/52' AND '12/31/55')
AND (hire_date BETWEEN '1/1/85' AND '12/31/88');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1/1/52' AND '12/31/55')
AND (hire_date BETWEEN '1/1/85' AND '12/31/88');

-- Create new table
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1/1/52' AND '12/31/55')
AND (hire_date BETWEEN '1/1/85' AND '12/31/88');

SELECT * FROM retirement_info;