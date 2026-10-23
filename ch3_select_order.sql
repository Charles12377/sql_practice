-- Active: 1792671424349@@127.0.0.1@3306@crashcourse
SELECT prod_name
FROM Products;

#单个列排序
SELECT prod_name
FROM Products
ORDER BY prod_name;

#多个列排序
SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY prod_price,prod_name;
#按列位置排序
SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY 2,3;
#指定排序方向
SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY prod_price DESC;
SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY prod_price DESC,prod_name;

SELECT cust_name
FROM Customers
ORDER BY cust_name DESC;

SELECT cust_id,order_num
FROM Orders
ORDER BY cust_id,order_date DESC;

SELECT quantity,item_price
FROM OrderItems
ORDER BY quantity DESC,item_price DESC;
