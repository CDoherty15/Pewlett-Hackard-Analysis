-- Deliverable 1

SELECT e.emp_no, e.first_name, e.last_name,
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY ti.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date ASC;

SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (title) DESC;

-- Deliverable 2
/* create a Mentorship Eligibilty table holds employees 
who are eligible to participate in a mentorship program
*/

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
RIGHT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
RIGHT JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

-- Summary
-- Additional query #1
SELECT ut.title, ROUND(AVG(s.salary), 2) AS avg_salary
INTO avg_salary
FROM unique_titles AS ut
LEFT JOIN salaries AS s
ON ut.emp_no = s.emp_no
GROUP BY ut.title
ORDER BY avg_salary DESC;

-- Additional queries, hiring date of those retiring
SELECT MIN(e.hire_date), MAX(e.hire_date)
FROM employees AS e
LEFT JOIN unique_titles AS ut
on e.emp_no = ut.emp_no;
-- MIN is jan 1, 1985 ; MAX is Jan 28 2000

SELECT COUNT(ut.emp_no), ut.title
FROM unique_titles AS ut
LEFT JOIN employees AS e
ON ut.emp_no = e.emp_no
WHERE (e.hire_date BETWEEN '1980-01-01' AND '1984-12-31')
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;


SELECT COUNT(ut.emp_no), ut.title
FROM unique_titles AS ut
LEFT JOIN employees AS e
ON ut.emp_no = e.emp_no
WHERE (e.hire_date BETWEEN '1985-01-01' AND '1989-12-31')
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;

SELECT COUNT(ut.emp_no), ut.title
FROM unique_titles AS ut
LEFT JOIN employees AS e
ON ut.emp_no = e.emp_no
WHERE (e.hire_date BETWEEN '1990-01-01' AND '1994-12-31')
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;

SELECT COUNT(ut.emp_no), ut.title
FROM unique_titles AS ut
LEFT JOIN employees AS e
ON ut.emp_no = e.emp_no
WHERE (e.hire_date BETWEEN '1995-01-01' AND '2000-12-31')
GROUP BY ut.title
ORDER BY COUNT (ut.title) DESC;