SELECT vend_name,prod_name,prod_price
FROM vendors,products
WHERE vendors.vend_id = products.vend_id;

SELECT vend_name,prod_name,prod_price
FROM vendors,products;

SELECT vend_name,prod_name,prod_price
FROM vendors
INNER JOIN products ON vendors.vend_id = products.vend_id;

SELECT prod_name,vend_name,prod_price,quantity
FROM orderitems,products,vendors
WHERE products.vend_id = vendors.vend_id
    AND orderitems.prod_id = products.prod_id
    AND order_num = 20007;

SELECT cust_name,cust_contact
FROM customers
WHERE cust_id IN(
    SELECT cust_id
    FROM orders
    WHERE order_num IN(
        SELECT order_num
        FROM orderitems
        WHERE prod_id = 'TNT2'
    )
);

SELECT cust_name,cust_contact
FROM customers,orders,orderitems
WHERE customers.cust_id = orders.cust_id
    AND orders.order_num = orderitems.order_num
    AND prod_id = 'TNT2';

SELECT cust_name,order_num
FROM customers,orders
WHERE customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;
SELECT cust_name,order_num
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;

SELECT cust_name,order_num,(
    SELECT SUM(quantity*item_price)
    FROM orderitems
    WHERE orderitems.order_num = orders.order_num
) AS order_total
FROM customers,orders
WHERE customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;
SELECT customers.cust_name,orders.order_num,
    SUM(orderitems.quantity*orderitems.item_price) AS order_total
FROM customers,orders,orderitems
WHERE customers.cust_id = orders.cust_id
    AND orders.order_num = orderitems.order_num
GROUP BY cust_name,order_num
ORDER BY cust_name,order_num;
SELECT customers.cust_name,orders.order_num,
    SUM(orderitems.quantity*orderitems.item_price) AS order_total
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
GROUP BY cust_name,order_num
ORDER BY cust_name,order_num;

SELECT orders.cust_id,orders.order_date
FROM orders
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
    AND orderitems.prod_id = 'TNT2'
GROUP BY orders.order_num
ORDER BY order_date;

SELECT orders.cust_id,
    SUM(orderitems.quantity*orderitems.item_price) AS total_ordered
FROM orders
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
GROUP BY orderitems.order_num
ORDER BY total_ordered DESC;

SELECT customers.cust_name,
    SUM(orderitems.quantity*orderitems.item_price) AS total_ordered
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
GROUP BY orderitems.order_num
HAVING total_ordered >= 14
ORDER BY total_ordered;