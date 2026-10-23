SELECT prod_name,prod_price
FROM Products
WHERE prod_price = 8.99;

SELECT prod_name,prod_price
FROM Products
WHERE prod_price < 10
ORDER BY prod_price;

SELECT vend_id,prod_name
FROM Products
WHERE vend_id != 1001;

SELECT prod_name,prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10
ORDER BY prod_price;

SELECT prod_name
FROM products
WHERE prod_price IS NULL;

SELECT cust_name
FROM customers
WHERE cust_email IS NULL;

SELECT prod_id,prod_name
FROM products
WHERE prod_price >= 9;

SELECT DISTINCT order_num
FROM orderitems

SELECT prod_name,prod_price
FROM products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price;