USE employees;

SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

SELECT first_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
);

SELECT DISTINCT title
FROM employees
         JOIN titles
             ON employees.emp_no = titles.emp_no
WHERE first_name = 'Aamod';

SELECT DISTINCT employees.first_name, employees.last_name
FROM employees
         JOIN dept_manager
             ON employees.emp_no = dept_manager.emp_no
         JOIN departments
             ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW()
  AND employees.gender = 'F';

SELECT DISTINCT departments.dept_name
FROM employees
         JOIN dept_manager
             ON employees.emp_no = dept_manager.emp_no
         JOIN departments
             ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW()
  AND employees.gender = 'F';