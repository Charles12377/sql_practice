START TRANSACTION
...

DELETE FROM orders;
ROLLBACK;

START TRANSACTION;
DELETE FROM orderitemscopy WHERE order_num = 20007;
DELETE FROM orderscopy WHERE order_num = 20007;
COMMIT;

SAVEPOINT delete1;  --占位符

DELIMITER //
CREATE PROCEDURE ass_new_order()
BEGIN
    START TRANSACTION;
    #插入客户
    INSERT INTO custcopy(cust_id,cust_name)
    VALUES(100010,'Toys Enporium');

    #设置保存点startorder
    SAVEPOINT startorder;

    #插入订单
    INSERT INTO orderscopy(order_num,order_date,cust_id)
    VALUES(20100,'2001/12/1',100010);

    #订单项1
    INSERT INTO orderitemscopy(order_num,order_item,prod_id,quantity,item_price)
    VALUES(20100,2,'BR03',100,10.99);

    #订单项2
    INSERT INTO orderitemscopy(order_num,order_item,prod_id,quantity,item_price)
    VALUES(20100,2,'BR03',100,10.99);

    COMMIT;
END //
DELIMITER;

call ass_new_order();


DROP PROCEDURE ass_new_order;
DELETE FROM orderitems WHERE order_num = 20100;
DELETE FROM orders WHERE order_num =20100;
DELETE FROM customers WHERE cust_id = 100010;