SELECT vend_name,UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

SELECT cust_name,cust_contact
FROM customers
WHERE cust_contact = 'Y Le';

SELECT cust_name,cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Y Le');

SELECT order_num
FROM orders
WHERE YEAR(order_date) = 2005;

SELECT cust_id,cust_name,
CONCAT(UPPER(LEFT(cust_contact,2)),UPPER(LEFT(cust_city,3)))
AS user_login
FROM customers
ORDER BY cust_id;

SELECT order_num,order_date
FROM orders
WHERE YEAR(order_date)=2005 AND MONTH(order_date)=9
ORDER BY order_date