-- 1
SELECT artfile
FROM artwork
WHERE period = 'Impressionism';

-- 2
SELECT * -- Needs to select other 2
FROM artwork
JOIN keyword
	ON artwork.artwork_id = keyword.keyword_id
WHERE keyword LIKE '%flowers%';

-- 3
SELECT artist.fname, artist.lname, artwork.title 
FROM artist
JOIN artwork
	ON artist.artist_id = artwork.artist_id;
  
-- 4
SELECT magazine.magazineName, subscriber.subscriberLastName, subscriber.subscriberFirstName 
FROM magazine
JOIN subscription
	ON magazine.magazineKey = subscription.magazineKey
JOIN subscriber
	ON subscription.subscriptionKey = subscriber.subscriberKey
ORDER BY magazine.magazineName;

-- 5
SELECT magazine.magazineName
FROM magazine
JOIN subscription
	ON magazine.magazineKey = subscription.magazineKey
JOIN subscriber
	ON subscription.subscriptionKey = subscriber.subscriberKey
WHERE subscriber.subscriberFirstName LIKE '%Samantha%'
ORDER BY magazine.magazineName;

-- 6
SELECT employees.first_name, employees.last_name, employees.emp_no
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name LIKE '%Customer%'
ORDER BY employees.last_name
LIMIT 5; 

-- 7
SELECT employees.first_name, employees.last_name, departments.dept_name, salaries.salary, salaries.from_date
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
JOIN salaries
	ON dept_emp.emp_no = salaries.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE employees.first_name = 'Berni'
ORDER BY -salaries.from_date
LIMIT 1; 






