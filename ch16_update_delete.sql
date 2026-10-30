UPDATE customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = 10005;

UPDATE customers
SET cust_contact = 'Sam Roberts',
    cust_email = 'kim@thetoystore.com'
WHERE cust_id = 10005;

UPDATE customers
SET cust_email = NULL
WHERE cust_id = 10005;

DELETE FROM custcopy
WHERE cust_id = 10006;

UPDATE vendors,customers
SET vend_state = UPPER(vend_state),
    cust_state = UPPER(cust_state);

DELETE FROM customers
WHERE cust_id = 20000;