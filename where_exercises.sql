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

