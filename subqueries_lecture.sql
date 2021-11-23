USE employees;

SELECT first_name,last_name, birth_date
FROM employees
LIMIT 10;

SELECT * FROM dept_manager WHERE to_date > NOW();

SELECT first_name,last_name, birth_date
FROM employees
WHERE emp_no in (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
);

USE join_test_db;

SELECT * FROM  roles;
SELECT * FROM users;

INSERT INTO users (name, email, role_id)
VALUES ('Douglas', 'douglas@codeup.com', (
    SELECT id FROM  roles WHERE name = 'commenter'
));

UPDATE users
SET role_id = (SELECT id FROM roles WHERE name = 'admin')
WHERE email = 'douglas@codeup.com';