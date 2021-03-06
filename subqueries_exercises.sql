# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
USE employees;

SELECT first_name,last_name
FROM employees
LIMIT 10;

SELECT * FROM employees WHERE hire_date = '1999-10-06';

SELECT first_name, last_name, hire_date
FROM employees
    WHERE hire_date IN
    (SELECT  hire_date FROM employees WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager WhERE to_date > NOW()) AND gender = 'F';

# BONUS
# Find all the department names that currently have female managers.
SELECT dept_name AS 'Department'
FROM departments
WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F') AND dept_no IN (SELECT dept_no FROM dept_manager);
# Find the first and last name of the employee with the highest salary.