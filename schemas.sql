DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;



CREATE TABLE departments (
	dept_no character varying(4) PRIMARY KEY NOT NULL,
	dept_name character varying(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date character varying(10) NOT NULL,
	first_name character varying(20) NOT NULL,
	last_name character varying(20) NOT NULL,
	gender character varying(1) NOT NULL,
	hire_date character varying(10) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
	ON UPDATE CASCADE,
	dept_no character varying(4) NOT NULL,
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no)
	ON UPDATE CASCADE,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no character varying(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no)
	ON DELETE CASCADE,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
	ON DELETE CASCADE
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
	ON DELETE CASCADE
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title character varying(50) NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
	ON DELETE CASCADE
);