-- EMPLOYEE QUERIES for the SQL Homework - Employee Database: A Mystery in Two Parts

-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.gender, 
		salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
;

-- 2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name,
		employees.last_name,
		employees.hire_date
FROM employees
WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31'
;