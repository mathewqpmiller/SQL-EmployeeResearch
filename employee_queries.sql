-- EMPLOYEE QUERIES for the SQL Homework - Employee Database: A Mystery in Two Parts

-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.gender, 
salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
;

-- 2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31'
;

-- 3) List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name.
SELECT
dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no
;
