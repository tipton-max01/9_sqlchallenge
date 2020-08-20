--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

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

