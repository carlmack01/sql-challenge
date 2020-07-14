--1.
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3.
SELECT departments.dept_no, departments.dept_name, employees.emp_no, last_name, first_name
FROM employees
INNER JOIN dept_emp  ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments  ON dept_emp.dept_no = departments.dept_no
;

--4.
SELECT employees.emp_no, last_name, first_name, departments.dept_name 
FROM employees
INNER JOIN dept_emp  ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments  ON dept_emp.dept_no = departments.dept_no
;

--5.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' and last_name like 'B%';

--6.
SELECT employees.emp_no, last_name, first_name, departments.dept_name 
FROM employees
INNER JOIN dept_emp  ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments  ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7.
SELECT employees.emp_no, last_name, first_name, departments.dept_name 
FROM employees
INNER JOIN dept_emp  ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments  ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--8.
 SELECT last_name, COUNT(last_name)AS Frequency
  FROM employees
  GROUP BY last_name
  ORDER BY COUNT(last_name) DESC
  ;


