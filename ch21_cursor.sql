#必须写在存储过程/函数里面
DECLARE custcursor CURSOR
FOR
SELECT * FROM customers
WHERE cust_email IS NULL;   
OPEN CURSOR custcurors

