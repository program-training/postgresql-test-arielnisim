
--1)
SELECT * FROM employees

--2)
SELECT SUM(units_in_stock) AS products_in_stock FROM products 

--4)
SELECT product_name FROM products
WHERE supplier_id = 2
ORDER BY unit_price DESC
LIMIT 3

--6)
SELECT category_name AS categories_with_more_10_products
FROM categories INNER JOIN products
ON categories.category_id = products.category_id
GROUP BY category_name
HAVING SUM(product_id) > 10

--8)
SELECT employees.first_name, employees.last_name, .territory_description 
FROM employeesterritories
INNER JOIN employee_territories
ON employees.employee_id = employee_territories.employee_id
INNER JOIN territories
ON employee_territories.territory_id = territories.territory_id

--9)
SELECT last_name, first_name, COUNT(order_id) AS orders 
FROM employees INNER JOIN orders
ON employees.employee_id = orders.employee_id
GROUP BY last_name, first_name
HAVING COUNT(order_id) > 100
