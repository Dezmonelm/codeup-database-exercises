USE employees;
#3
SELECT CONCAT(last_name, ', ', first_name) AS 'full_name' FROM employees GROUP BY full_name, last_name ORDER BY last_name LIMIT 10;
#4
SELECT CONCAT(last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10;
#5
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10;