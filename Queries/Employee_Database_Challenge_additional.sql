-- Get total employees vs retiring employees
SELECT COUNT(e) as total_employees, 
		COUNT(ut) as retiring_employees
FROM employees as e 
LEFT JOIN unique_titles as ut 
ON (e.emp_no = ut.emp_no);

-- Create mentors_per_department list
DROP TABLE mentors_per_department;
SELECT d.dept_name, COUNT(dept_name) as Eligible_Mentors
INTO mentors_per_department
FROM mentorship_eligibility as me
LEFT JOIN dept_emp as de
ON (me.emp_no = de.emp_no)
	INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name;

SELECT * FROM mentors_per_department;

-- Create retirees_per_department
DROP TABLE retirees_per_department;
SELECT d.dept_name, COUNT(dept_name) as retiring_employees
INTO retirees_per_department
FROM unique_titles as ut
LEFT JOIN dept_emp as de
ON (ut.emp_no = de.emp_no)
	INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name;

SELECT * FROM retirees_per_department;