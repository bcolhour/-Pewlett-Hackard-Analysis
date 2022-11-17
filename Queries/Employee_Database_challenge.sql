SELECT 
e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO deliverable1a
FROM employees AS e
INNER JOIN titles as t
ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT DISTINCT ON(del.emp_no) del.emp_no, del.first_name, del.last_name, del.title
INTO unique_titles
FROM deliverable1a as del
WHERE del.to_date = '9999-01-01'

SELECT COUNT (u.title),u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title
ORDER BY COUNT DESC

SELECT DISTINCT ON(e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship
FROM employees AS e
LEFT JOIN dept_employees AS de
ON e.emp_no=de.emp_no
LEFT JOIN  titles AS t
ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no
