SELECT prod_id,prod_price,prod_name
FROM products
WHERE vend_id != 1003 AND prod_price <= 9
ORDER BY prod_price;

SELECT prod_id,prod_price,prod_name
FROM products
WHERE vend_id = 1003 OR vend_id = 1001
ORDER BY prod_price;

SELECT prod_name,prod_price
FROM products
WHERE vend_id = 1003 OR vend_id = 1001
    AND prod_price >=9;

SELECT prod_name,prod_price
FROM products
WHERE (vend_id = 1003 OR vend_id = 1001)
    AND prod_price >=9;

SELECT prod_name,prod_price
FROM products
WHERE vend_id IN (1001,1003)
ORDER BY prod_price;

SELECT prod_name
FROM products
WHERE NOT vend_id = 1003
ORDER BY prod_name;

SELECT vend_name
FROM vendors
WHERE vend_country = 'USA' AND vend_state = 'CA'

SELECT order_num,prod_id
FROM orderitems
WHERE quantity >= 10
ORDER BY prod_id,quantity;

SELECT prod_name,prod_price
FROM products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price; 