USE magist;

#How many orders are there in the dataset?
SELECT 
    COUNT(order_id) AS number_of_orders,
	COUNT(DISTINCT order_id) AS distinct_number_of_orders
FROM
    orders;

#Are orders actually delivered?
SELECT 
    order_status, COUNT(order_id) AS number_of_orders
FROM
    orders
GROUP BY order_status
ORDER BY number_of_orders DESC;

#Is Magist having user growth?
SELECT 
    YEAR(order_purchase_timestamp) AS ord_year,
    MONTH(order_purchase_timestamp) AS ord_month,
    COUNT(order_id) AS number_of_orders
FROM
    orders
GROUP BY ord_year , ord_month
ORDER BY ord_year, ord_month;
 
#How many products are there on the products table?
SELECT
	COUNT(product_id) AS number_of_products,
    COUNT(DISTINCT product_id) AS distinct_number_of_products
FROM
	products;

#Which are the categories with the most products?
SELECT
	product_category_name_english AS category,
	COUNT(product_id) AS number_of_products
FROM
	products
LEFT JOIN
	product_category_name_translation AS n ON products.product_category_name = n.product_category_name
GROUP BY
	category
ORDER BY
	number_of_products DESC;

#How many of those products were present in actual transactions?
SELECT
	COUNT(DISTINCT product_id) AS number_of_products_sold
FROM
	order_items;
    
#What’s the price for the most expensive and cheapest products?
SELECT
	product_category_name_english AS category,
	COUNT(DISTINCT o.product_id) AS number_of_products,
    AVG(price) AS avg_price,
    MIN(price) AS cheatpest_item_sold,
    MAX(price) AS most_expensive_item_sold
FROM
	order_items AS o
LEFT JOIN 
	products AS p ON o.product_id = p.product_id
LEFT JOIN
	product_category_name_translation AS t ON p.product_category_name = t.product_category_name
GROUP BY
	category
ORDER BY
	avg_price DESC;
    
#What are the highest and lowest payment values?
SELECT
    AVG(payment_value) AS avg_order_value,
    MIN(payment_value) AS lowest_order_value,
    MAX(payment_value) AS highest_order_value
FROM
	order_payments
