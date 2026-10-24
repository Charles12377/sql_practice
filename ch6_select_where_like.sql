#百分号
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE 'Rocket%';

SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '%ton%'

SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE 'F%s';

#下划线
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';

SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '% ton anvil';

#方括号
SELECT cust_contact
FROM customers
WHERE cust_contact REGEXP '^[JK]'; --MySQL中LIKE不支持方括号通配符

SELECT cust_contact
FROM customers
WHERE NOT cust_contact REGEXP '^[JK]';

SELECT prod_name,prod_desc
FROM products
WHERE prod_desc LIKE '%red%';

SELECT prod_name,prod_desc
FROM products
WHERE NOT prod_desc LIKE '%red%';

SELECT prod_name,prod_desc
FROM products
WHERE prod_desc LIKE '%red%' AND prod_desc LIKE '%TNT%';

SELECT prod_name,prod_desc
FROM products
WHERE prod_desc LIKE '%TNT%red%';
