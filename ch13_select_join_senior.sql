SELECT CONCAT(RTRIM(vend_name) , '(' , RTRIM(vend_country) , ')') 
    AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT cust_name,cust_contact
FROM customers AS c, orders AS o, orderitems AS oi
WHERE c.cust_id = o.cust_id
    AND oi.order_num = o.order_num
    AND prod_id = 'TNT2';

SELECT cust_id,cust_name,cust_contact
FROM customers
WHERE cust_name = (
    SELECT cust_name
    FROM customers
    WHERE cust_contact = 'Y Lee'
);
SELECT c1.cust_id,c1.cust_name,c1.cust_contact
FROM customers AS c1,customers AS c2
WHERE c1.cust_name = c2.cust_name
    AND c2.cust_contact = 'Y Lee';

SELECT c.*,o.order_num,o.order_date,
    oi.prod_id,oi.quantity,oi.item_price
FROM customers AS c,orders AS o,orderitems AS oi
WHERE c.cust_id = o.cust_id
    AND oi.order_num = o.order_num
    AND prod_id = 'TNT2';

SELECT customers.cust_id,orders.order_num
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id,orders.order_num
FROM customers
LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id,orders.order_num
FROM customers
RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id,COUNT(orders.order_num) AS num_ord
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

SELECT customers.cust_id,COUNT(orders.order_num) AS num_ord
FROM customers
LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

SELECT customers.cust_name,orders.order_num
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_name,orders.order_num
FROM customers
LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT products.prod_name,orderitems.order_num
FROM products
LEFT OUTER JOIN orderitems ON products.prod_id = orderitems.prod_id
ORDER BY products.prod_name;

SELECT products.prod_name,COUNT(orderitems.order_num) AS num_ord
FROM products
LEFT OUTER JOIN orderitems ON products.prod_id = orderitems.prod_id
GROUP BY products.prod_id
ORDER BY products.prod_name;

SELECT vendors.vend_id,COUNT(products.prod_name) AS num_ord
FROM vendors
LEFT OUTER JOIN products ON vendors.vend_id = products.vend_id
GROUP BY vendors.vend_id
ORDER BY vendors.vend_id;