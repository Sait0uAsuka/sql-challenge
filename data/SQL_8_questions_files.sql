--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, 
       employees.last_name, 
       employees.first_name, 
       employees.sex, 
       salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.first_name,
	   employees.last_name,
	   employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '1/01/1986' AND '12/31/1986'

-- 3. List the manager of each department along with their department number, 
--    department name, employee number, last name, and first name.
SELECT departments.dept_no,
	   departments.dept_name,
	   employees.emp_no, 
       employees.last_name, 
       employees.first_name
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;

--4. List the department number for each employee along with that employee’s employee number, 
--   last name, first name, and department name.
SELECT employees.emp_no,
	   employees.last_name, 
       employees.first_name,
	   departments.dept_name
FROM departments 
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no;

--5. List first name, last name, and sex of each employee 
--   whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name, 
       employees.last_name, 
       employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
and employees.last_name LIKE 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no,
	   employees.last_name, 
       employees.first_name
FROM departments 
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007';

--7. List each employee in the Sales and Development departments, including their employee number, 
--   last name, first name, and department name.
SELECT employees.emp_no,
	   employees.last_name, 
       employees.first_name,
	   departments.dept_name
FROM departments 
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no IN ('d005', 'd007');


--8. List the frequency counts, in descending order, 
--   of all the employee last names (that is, how many employees share each last name).
--CODE IDEA 'https://stackoverflow.com/questions/16707780/count-how-many-rows-have-the-same-value'
SELECT last_name, count(*) as last_name_count 
FROM employees 
GROUP BY last_name 
ORDER BY last_name_count DESC;












