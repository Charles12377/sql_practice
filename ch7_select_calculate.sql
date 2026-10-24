SELECT CONCAT(vend_name, '(', vend_country, ')')
FROM vendors
ORDER BY vend_name;

SELECT CONCAT(vend_name, '(', vend_country, ')')
AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT prod_id,quantity,item_price
FROM orderitems
WHERE order_num = 20008;

SELECT prod_id,quantity,item_price,
quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;

SELECT vend_id,
vend_name AS vname,
vend_city AS vcity,
vend_address AS vaddress
FROM vendors
ORDER BY vname;

SELECT prod_id,prod_price,
prod_price*0.9 AS sale_price
FROM products