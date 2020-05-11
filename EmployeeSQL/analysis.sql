SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
FROM employees
INNER JOIN Salaries ON
employees.emp_no = salaries.emp_no;

______________________________________

SELECT employees.first_name,
	employees.last_name,
	employees.hire_date,
	EXTRACT (YEAR FROM hire_date) AS YEAR
FROM employees
WHERE hire_date > '12/31/1985' AND hire_date < '01/01/1987';

___________________________________________________________________

SELECT t1.dept_no,
	t3.dept_name,
	t1.emp_no,
	t2.last_name,
	t2.first_name
FROM dept_manager AS t1
JOIN employees AS t2 ON
t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t1.dept_no;

__________________________________

SELECT t1.emp_no,
	t1.last_name,
	t1.first_name,
	t3.dept_name
FROM employees AS t1
JOIN dept_emp AS t2
ON t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t2.dept_no;

__________________________________
SELECT employees.first_name,
	employees.last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 
___________________________________________________________________

SELECT t3.dept_name,
	t1.emp_no, 
	t1.last_name,
	t1.first_name
FROM employees AS t1
JOIN dept_emp AS t2
ON t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t2.dept_no
WHERE t3.dept_name = 'Sales';

___________________________________________________________________

SELECT t3.dept_name, t1.emp_no,
	t1.last_name,
	t1.first_name
FROM employees AS t1
JOIN dept_emp AS t2
ON t1.emp_no = t2.emp_no
JOIN departments AS t3
ON t3.dept_no = t2.dept_no
WHERE t3.dept_name = 'Sales' OR t3.dept_name = 'Development';
___________________________________________________________________

SELECT last_name, COUNT (last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;



