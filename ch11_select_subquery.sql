SELECT order_num
FROM orderitems
WHERE prod_id = 'TNT2';
SELECT cust_id
FROM orders
WHERE order_num IN(20005,20006);


SELECT cust_id
FROM orders
WHERE order_num IN (
    SELECT order_num
    FROM orderitems
    WHERE prod_id = 'TNT2'
    );

SELECT cust_name,cust_contact
FROM customers
WHERE cust_id IN(10001,10003);

SELECT cust_name,cust_contact
FROM customers
WHERE cust_id IN(
    SELECT cust_id
    FROM orders
    WHERE order_num IN (
        SELECT order_num
        FROM orderitems
        WHERE prod_id = 'TNT2'
    )
);

SELECT COUNT(*) AS orders
FROM orders
WHERE cust_id = 10001;


SELECT cust_name,cust_state,(
    SELECT COUNT(*)
    FROM orders
    WHERE orders.cust_id = customers.cust_id 
    #用句点分割列名，用以完全限定列名，告诉SQL这两个cust_id是来自两个表
) AS orders
FROM customers
ORDER BY cust_name;

SELECT cust_name,cust_state,(
    SELECT COUNT(*)
    FROM orders
    WHERE cust_id = cust_id  
    #没有句点分割列名，SQL会认为对orders表中的cust_id自身进行比较
) AS orders
FROM customers
ORDER BY cust_name;

SELECT cust_id
FROM orders
WHERE order_num IN(
    SELECT order_num
    FROM orderitems
    WHERE item_price >= 10
);

SELECT cust_id,order_date
FROM orders
WHERE order_num IN(
    SELECT order_num
    FROM orderitems
    WHERE prod_id = 'TNT2'
)
ORDER BY order_date;

SELECT cust_email
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

SELECT cust_id,(
    SELECT SUM(quantity*item_price)
    FROM orderitems
    WHERE orderitems.order_num = orders.order_num
) AS total_ordered
FROM orders
ORDER BY total_ordered DESC;

SELECT prod_name,(
    SELECT SUM(quantity)
    FROM orderitems
    WHERE orderitems.prod_id = products.prod_id
) AS quant_sold
FROM products
ORDER BY quant_sold DESC;