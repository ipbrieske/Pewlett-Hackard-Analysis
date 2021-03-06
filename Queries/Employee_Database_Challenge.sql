-- Build retirement_titles
DROP TABLE retirement_titles;
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
							e.first_name,
							e.last_name,
							t.title, 
							t.from_date,
							t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
	ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no DESC;

SELECT * FROM retirement_titles;

-- Build unique titles
DROP TABLE unique_titles;
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
							e.first_name,
							e.last_name,
							t.title, 
							t.from_date,
							t.to_date
INTO unique_titles
FROM employees as e
	INNER JOIN titles as t
	ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (to_date = '9999-01-01')
ORDER BY emp_no ASC, from_date DESC;

SELECT * FROM unique_titles;

-- Build retiring_titles
DROP TABLE retiring_titles;
SELECT DISTINCT ON (title, count) COUNT(title) AS count, title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

-- Mentorship Eligibility
DROP TABLE mentorship_eligibility;
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no, e.first_name, e.last_name, e.birth_date, 
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
		INNER JOIN titles as t
		ON (de.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') 
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;