SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT * FROM employees
WHERE DATE_PART('year', hire_date) = '1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, employees.first_name, employees.last_name
FROM departments, dept_manager, employees
WHERE employees.emp_no = dept_manager.emp_no AND departments.dept_no = dept_manager.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name,	departments.dept_name
FROM employees, departments, dept_emp
WHERE departments.dept_no = 'd007' AND employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE (departments.dept_no = 'd007' OR departments.dept_no = 'd005') AND employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no 
ORDER BY dept_name;

SELECT  employees.last_name, COUNT(employees.last_name) as Counter
FROM employees
GROUP BY employees.last_name
ORDER BY Counter DESC;