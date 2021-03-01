-- EMPLOYEE TABLE SCHEMATA for the SQL Homework - Employee Database: A Mystery in Two Parts

-- Use these to drop any tables if they exist; for debug, error correction or table creation.
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;


-- Because of primary keys and foreign keys I recommend that the tables be built in this order; 

-- Create 'employees' table and execute
CREATE TABLE employees (
    emp_no INT NOT NULL PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    gender VARCHAR (10) NOT NULL,
    hire_date DATE NOT NULL
);

-- Import successfully completed. Import returned 300024 rows of data; limit view to 15.
-- I had to delete one column from the employees.csv for import to successfully complete.
SELECT * FROM employees LIMIT 15;

-- Create 'departments' table and execute
CREATE TABLE departments (
	dept_no VARCHAR (20) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (20) NOT NULL
);

-- Import successfully completed. Import returned 9 rows of data; no need to limit view
SELECT * FROM departments;

-- Create 'dept_emp' table and execute
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
	PRIMARY KEY (emp_no, dept_no)
);

-- Import successfully completed. 331603 rows of data added; limit view to 15 rows.
SELECT * FROM dept_emp LIMIT 15;

-- Create 'dept_manager' table and execute
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
	PRIMARY KEY (dept_no, emp_no)
);

-- Import successfully completed.  24 rows of data added. No need to limit view of rows. 
SELECT * FROM dept_manager;

-- Create 'titles' table and execute
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);

-- Import successfully completed. 7 rows of data created; no need to limit the row view.
SELECT * FROM titles;

-- Create 'salaries' table and execute
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
	PRIMARY KEY (emp_no)
);

-- Import successfully completed.  300024 rows of data created; limit viewable rows to 15.
SELECT * FROM salaries LIMIT 15;

-- ALL .CSV FILES TABLE SCHEMATAS CREATED --