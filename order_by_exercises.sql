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