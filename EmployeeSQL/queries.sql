DROP VIEW IF EXISTS Q1;
DROP VIEW IF EXISTS Q2;
DROP VIEW IF EXISTS Q3;
DROP VIEW IF EXISTS Q4;
DROP VIEW IF EXISTS Q5;
DROP VIEW IF EXISTS Q6;
DROP VIEW IF EXISTS Q7;
DROP VIEW IF EXISTS Q8;

-- Question 1.
-- Creating views for you to access or you can run the code one by one
CREATE VIEW Q1 
AS
SELECT  employees.emp_no AS "Employee Number"
, last_name AS "Last Name"
, first_name AS "First Name"
, gender AS "Genger"
, salary AS "Salary"
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no;

-- Question 2.
CREATE VIEW Q2
AS
SELECT *
FROM employees
WHERE hire_date LIKE '1986%';

-- Question 3.
CREATE VIEW Q3
AS
SELECT departments.dept_no "Department Number"
, departments.dept_name AS "Department Name"
, titles.emp_no AS "Employee Number"
, last_name AS "Last Name"
, first_name AS "First Name"
, titles.from_date AS "Start Date"
, titles.to_date AS "End Date"
FROM employees
JOIN titles
ON employees.emp_no = titles.emp_no
JOIN dept_manager
ON titles.emp_no = dept_manager.emp_no
JOIN departments 
ON dept_manager.dept_no = departments.dept_no
WHERE title = 'Manager';

-- Question 4.
CREATE VIEW Q4
AS
SELECT employees.emp_no AS "Employee Number"
, last_name AS "Last Name"
, first_name AS "First Name"
, departments.dept_name AS "Department Name"
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY "Department Name"; -- or order by department number?

-- Question 5.
CREATE VIEW Q5
AS
SELECT emp_no
, first_name
, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Question 6.
CREATE VIEW Q6
AS
SELECT employees.emp_no AS "Employee Number"
, last_name AS "Last Name"
, first_name AS "First Name"
, dept_name AS "Department Name"
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- Question 7.
CREATE VIEW Q7
AS
SELECT employees.emp_no AS "Employee Number"
, last_name AS "Last Name"
, first_name AS "First Name"
, dept_name AS "Department Name"
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name IN ('Sales','Development');
-- ORDER BY dept_name DESC (IF you want it to be sorted by department names)

-- Question 8.
CREATE VIEW Q8
AS
SELECT last_name AS "Last Name"
,COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC
, last_name; -- if the frequency is the same within a few names, sort them ascendingly