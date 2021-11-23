USE employees;

# Current manager of department
SELECT d.dept_name AS 'Department_Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department_Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM departments as d
         JOIN dept_manager as dm
              on d.dept_no = dm.dept_no
         JOIN employees as e
              on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' and gender = 'F';

# current titles of employees currently working in the Customer Service department
SELECT t.title AS Title, COUNT(e.emp_no) AS Count
FROM titles t
         JOIN employees e on t.emp_no = e.emp_no
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY t.title;

# current salary of all current managers
SELECT DISTINCT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER, s.salary AS Salary
FROM employees as e
         JOIN dept_manager as dm
              on e.emp_no = dm.emp_no
         JOIN departments as d
              on dm.dept_no = d.dept_no
         JOIN salaries s
              on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY dept_name;

