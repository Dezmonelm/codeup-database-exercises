USE employees;

SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name Like 'E%' or '%E' LIMIT 10;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 31;

-- ^ or v --

SELECT * FROM employees
WHERE  MONTH(birth_date) =12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%';

SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

-- ^ or v --

SELECT * FROM employees
WHERE  MONTH(birth_date) =12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25;

-- ^ or v --

SELECT CONCAT('DAYS AT THE COMPANY: ', DATEDIFF(NOW(), hire_date)) AS 'DAYS AT COMPANY'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'