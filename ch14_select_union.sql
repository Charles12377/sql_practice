SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_state IN ('IN','IL','MI');
SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_name = 'Mouse House';

SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_state IN ('IN','IL','MI')
UNION
SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_name = 'Mouse House';

SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_state IN ('IN','IL','MI')
UNION ALL
SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_name = 'Wascals';

SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_state IN ('IN','IL','MI')
UNION ALL
SELECT cust_name,cust_contact,cust_email
FROM customers
WHERE cust_name = 'Wascals'
ORDER BY cust_name,cust_contact;

SELECT prod_id,quantity
FROM orderitems
WHERE quantity >= 5
UNION
SELECT prod_id,quantity
FROM orderitems
WHERE prod_id LIKE 'ANV'
ORDER BY prod_id;

SELECT prod_id,quantity
FROM orderitems
WHERE quantity >= 5
    OR quantity LIKE 'ANV'
ORDER BY prod_id;

SELECT prod_name AS prod_cust_name
FROM products
UNION
SELECT cust_name
FROM customers;

