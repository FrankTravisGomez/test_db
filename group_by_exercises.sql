USE employees;

SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name;

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name, first_name;

SELECT last_name, COUNT(last_name) FROM employees
WHERE last_name NOT LIKE '%qu%' AND
        last_name LIKE '%q%'
GROUP BY last_name ORDER BY COUNT(last_name);

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name NOT LIKE '%qu%' AND
        last_name LIKE '%q%'
GROUP BY last_name ORDER BY COUNT(last_name);

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;
