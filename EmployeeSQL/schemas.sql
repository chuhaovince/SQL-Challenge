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
	REFERENCES employees(emp_no),
	dept_no character varying(4) NOT NULL,
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no),
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no character varying(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title character varying(50) NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL,
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
);