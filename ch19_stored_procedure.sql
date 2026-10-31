DELIMITER //
CREATE PROCEDURE mailinglidtcount(OUT cnt INT)
BEGIN
    SELECT COUNT(*) INTO cnt
    FROM customers
    WHERE cust_email IS NOT NULL;
END //
DELIMITER;

CALL mailinglidtcount(@cnt);
SELECT @cnt;

DELIMITER //
CREATE PROCEDURE neworder(IN cust_id CHAR(10))
BEGIN
    INSERT INTO orders(cust_id,order_date)
    VALUES(cust_id,NOW());
    SELECT LAST_INSERT_ID() AS order_num;
END //
DELIMITER;

CALL neworder('10006');

