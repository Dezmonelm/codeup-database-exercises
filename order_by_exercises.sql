USE employees;

SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE last_name Like 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name Like '%q%';

SELECT * FROM employees WHERE last_name like '%E%' AND  last_name LIKE '%E%';

SELECT * FROM employees WHERE last_name like '%q%' AND  last_name  NOT LIKE '%qu%';