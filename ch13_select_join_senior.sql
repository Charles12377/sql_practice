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