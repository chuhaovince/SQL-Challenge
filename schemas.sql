DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;



CREATE TABLE departments (
	dept_no character varying(4) NOT NULL,
	dept_name character varying(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no character varying(4) NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no character varying(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date character varying(10) NOT NULL,
	first_name character varying(20) NOT NULL,
	last_name character varying(20) NOT NULL,
	gender character varying(1) NOT NULL,
	hire_date character varying(10) NOT NULL
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title character varying(50) NOT NULL,
	from_date character varying(10) NOT NULL,
	to_date character varying(10) NOT NULL
);