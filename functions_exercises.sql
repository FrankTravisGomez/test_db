USE employees;
SELECT emp_no, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
   OR first_name = 'A';
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no >= 1000;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC ;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no >= 1000
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT CONCAT(first_name, ' ' ,last_name) AS 'Employee First Last' FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT birth_date AS 'Born on Christmas', CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;



SELECT DAY('1990-12-25') AS 'Hired on Christmas in the 90s',CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees;

SELECT hire_date AS 'Find all employees hired in the 90s and born on Christmas — 362 rows.',CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT hire_date AS 'Hired on Christmas in the 90s',CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date , hire_date DESC;

SELECT DATEDIFF('1990-12-25 23:59:59', curdate());
SELECT DATEDIFF('1990-01-01 23:59:59', curdate());