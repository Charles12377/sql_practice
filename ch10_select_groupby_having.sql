SELECT COUNT(*) AS num_prods
FROM products
WHERE vend_id = 1001;

SELECT vend_id,COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

SELECT cust_id,COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 3;

SELECT vend_id,COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 3;

SELECT order_num,COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3;

SELECT order_num,COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items,order_num;

SELECT order_num,COUNT(order_num) AS order_lines
FROM orderitems
GROUP BY order_num
ORDER BY order_lines;

SELECT prod_id,MIN(prod_price) AS cheapest_item
FROM products
GROUP BY prod_id
ORDER BY cheapest_item;

SELECT order_num,SUM(quantity) AS sum_items
FROM orderitems
GROUP BY order_num
HAVING sum_items >=10
ORDER BY sum_items DESC;

SELECT order_num,SUM(item_price*quantity) AS sum_consume
FROM orderitems
GROUP BY order_num
HAVING sum_consume >=100
ORDER BY sum_consume DESC;