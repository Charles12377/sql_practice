SELECT AVG(prod_price) AS avg_price
FROM products;

SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 1001;

SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS num_cust
FROM customers;

SELECT MAX(prod_price) AS max_price
FROM products;

SELECT MIN(prod_price) AS min_price
FROM products;

SELECT SUM(quantity) AS item_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id = 1001;

SELECT COUNT(*) AS num_items,
MIN(prod_price) AS price_min,
MAX(prod_price) AS price_max,
AVG(prod_price) AS price_avg
FROM products;

SELECT SUM(quantity) AS num_items
FROM orderitems;

SELECT SUM(quantity) AS num_items
FROM orderitems
WHERE order_num = 20005;

SELECT MAX(prod_price) AS max_price
FROM products
WHERE prod_price <= 10;