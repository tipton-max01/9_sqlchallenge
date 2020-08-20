--Query 1
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

--> We have a total of 300,024 employees. Wow!
SELECT COUNT(emp_no) FROM employees;

--> JOIN employees table & salaries table together on emp_no, adding only the columnns I want..
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
ORDER BY salary ASC;
--Success for Query 1!

--Query 2
--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.last_name,
	e.first_name,
	e.hire_date
FROM employees as e
WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31')
ORDER BY hire_date ASC;
--Success for Query 2!

--Query 3
--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT dp.dept_no,
	dp.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM (( dept_manager as dm
INNER JOIN departments as dp ON dm.dept_no = dp.dept_no)
INNER JOIN employees as e ON dm.emp_no = e.emp_no);
--Success for Query 3! wow!

--Query 4
--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	dp.dept_name
FROM ((dept_emp AS de
INNER JOIN departments AS dp ON de.dept_no = dp.dept_no)
INNER JOIN employees AS e ON de.emp_no = e.emp_no);
--Success for Query 4. This is getting exciting.

--Query 5
--5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."

--Query 6
--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

--Query 7
7--. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

--Query 8
--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
--ORDER BY 'frequency count of employee last names' DESC;

