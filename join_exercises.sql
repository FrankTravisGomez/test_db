USE employees;

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM employees AS e
        JOIN dept_manager
            ON dept_manager.emp_no = e.emp_no
        JOIN departments
            ON departments.dept_no = dept_manager.dept_no
          WHERE dept_manager.to_date = '9999-01-01';

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM employees AS e
         JOIN dept_manager
              ON e.emp_no = dept_manager.emp_no
         JOIN departments
              ON dept_manager.dept_no = departments.dept_no
WHERE e.gender = 'F'
  AND dept_manager.to_date = '9999-01-01';

SELECT titles.title, COUNT(*) AS total
FROM employees
         JOIN dept_emp
             ON employees.emp_no = dept_emp.emp_no
         JOIN departments
             ON dept_emp.dept_no = departments.dept_no
         JOIN titles
             ON employees.emp_no = titles.emp_no
WHERE departments.dept_name = 'Customer Service'
  AND dept_emp.to_date = '9999-01-01'
  AND titles.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager, salaries.salary
FROM employees AS e
         JOIN dept_manager
             ON dept_manager.emp_no = e.emp_no
         JOIN departments
             ON departments.dept_no = dept_manager.dept_no
         JOIN salaries
             ON salaries.emp_no = e.emp_no
                    AND salaries.to_date = '9999-01-01'
WHERE dept_manager.to_date = '9999-01-01';