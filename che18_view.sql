SELECT cust_name, cust_contact 
FROM Customers, Orders, OrderItems 
WHERE Customers.cust_id = Orders.cust_id 
AND OrderItems.order_num = Orders.order_num 
AND prod_id = 'RGAN01';   
CREATE VIEW productcustomers AS
SELECT cust_name,cust_contact,prod_id
FROM customers,orders,orderitems
WHERE customers.cust_id = orders.cust_id
    AND orderitems.order_num = orders.order_num;
SELECT cust_name,cust_contact
FROM productcustomers
WHERE prod_id = 'TNT2';

SELECT CONCAT(RTRIM(vend_name),'(',RTRIM(vend_country),')') AS vend_title
FROM vendors
ORDER BY vend_name;
CREATE VIEW vendorlocations AS
SELECT CONCAT(RTRIM(vend_name),'(',RTRIM(vend_country),')')
    AS vend_title
FROM vendors;
SELECT * 
FROM vendorlocations;

CREATE VIEW customeremaillist AS
SELECT cust_id,cust_name,cust_email
FROM customers
WHERE cust_email IS NOT NULL;
SELECT * 
FROM customeremaillist;

SELECT prod_id,
    quantity,
    item_price,
    quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20005;
CREATE VIEW orderitemsexpanded AS
SELECT order_num,
    prod_id,
    quantity,
    item_price,
    quantity*item_price AS expanded_price
FROM orderitems;
SELECT *
FROM orderitemsexpanded
WHERE order_num = 20005;

CREATE VIEW customerwithorders AS
SELECT customers.*
FROM customers
RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id
    AND order_num IS NOT NULL;
SELECT *
FROM customerwithorders;
