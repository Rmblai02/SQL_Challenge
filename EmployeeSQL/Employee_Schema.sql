-- Creating table schema

-- Create table departments

DROP TABLE departments;

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments

-- Create table employees

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

select * from employees


--Create table dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- Create table dept_managers

DROP TABLE dept_managers

CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers


--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);
	

select * from titles