-- My Table Schemata for the SQL Homework - Employee Database: A Mystery in Two Parts

-- Drop any tables if they exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

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