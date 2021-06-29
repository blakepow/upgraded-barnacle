-- 1
SELECT ROUND(AVG(quantity)) FROM stock;
-- 2
SELECT DISTINCT product_name
FROM product
JOIN stock
	ON product.product_id = stock.product_id
WHERE quantity = 0
ORDER BY product_name;

-- 3
SELECT category_name, MAX(stock.quantity)
FROM category
JOIN product
	ON category.category_id = product.category_id
JOIN stock
	ON product.product_id = stock.product_id
JOIN store
	ON stock.store_id = store.store_id
WHERE store.store_id = 2
GROUP BY catagory_name;
-- ORDER BY stock.quantity;

-- 4
SELECT COUNT(emp_no) from employees;

-- 5
SELECT departments.dept_name, ROUND(AVG(salaries.salary), 2) AS average_salary
FROM departments
JOIN dept_emp
	ON departments.dept_no = dept_emp.dept_no
JOIN salaries
	ON dept_emp.emp_no = salaries.emp_no
WHERE salary < 60000
GROUP BY dept_name;
-- ORDER BY salary;

-- 6
SELECT departments.dept_name, COUNT(employees.gender) 
FROM departments
JOIN dept_emp
	ON departments.dept_no = dept_emp.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
WHERE gender = 'F'
GROUP BY departments.dept_name
ORDER BY departments.dept_name;






