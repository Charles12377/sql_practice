SELECT prod_id,prod_name,prod_price FROM Products;

SELECT * FROM Products;

SELECT DISTINCT vend_id FROM Products;

SELECT DISTINCT vend_id, prod_price FROM Products; 
SELECT vend_id, prod_price FROM Products; 

SELECT prod_name FROM Products LIMIT 5;

#两种写法结果一样
SELECT prod_name FROM Products LIMIT 5 OFFSET 4;
SELECT prod_name FROM Products LIMIT 4 , 5;


SELECT cust_id FROM Customers;

SELECT DISTINCT prod_id FROM OrderItems;

/*SELECT * FROM Customers;*/
SELECT cust_name from Customers;