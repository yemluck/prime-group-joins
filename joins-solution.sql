--1. Get all customers and their addresses.
SELECT 
	customers.id,
	first_name,
	last_name,
	street,
	city,
	state,zip,
	address_type

FROM customers
JOIN addresses
	ON customers.id = addresses.customer_id;

--2. Get all orders and their line items (orders, quantity and product).
SELECT 
	orders.id AS orderId,
	products.description,
	products.unit_price,
	line.quantity,
	orders.order_date
	
FROM orders
JOIN line_items line
	ON orders.id = line.order_id
JOIN products
	ON line.product_id = products.id;

--3. Which warehouses have cheetos?
SELECT *
FROM warehouse
JOIN warehouse_product wp
	ON 	warehouse.id = wp.warehouse_id
JOIN products
	ON products.id = wp.product_id
WHERE description = 'cheetos';

--4. Which warehouses have diet pepsi?
SELECT *
FROM warehouse
JOIN warehouse_product wp
	ON 	warehouse.id = wp.warehouse_id
JOIN products
	ON products.id = wp.product_id
WHERE description = 'diet pepsi';


--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


--6. How many customers do we have?


--7. How many products do we carry?


--8. What is the total available on-hand quantity of diet pepsi?