INSERT INTO customers
VALUES(
    10006,
    'Toy Land',
    '123 Any Street',
    'New York',
    'NY',
    '11111',
    'USA',
    NULL,
    NULL
);

INSERT INTO customers(
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country,
    cust_contact,
    cust_email
)
VALUES(
    10007,
    'Yang',
    'university',
    'TaiYuan',
    'TY',
    '66666',
    'China',
    'HuaZi',
    '12345678@qq.com'
);

INSERT INTO customers(
    cust_id,
    cust_contact,
    cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip
)
VALUES(
    10008,
    NULL,
    NULL,
    'Hui',
    'University',
    'WuHan',
    'WH',
    '99999'
);

INSERT INTO customers(
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
)
VALUES(
    10009,
    'Min',
    'University',
    'LanZhou',
    'LZ',
    '22222',
    'China'
);

INSERT INTO customers(
    cust_id,
    cust_contact,
    cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
)
SELECT
    cust_id,
    cust_contact,
    cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
FROM custnew;

CREATE TABLE custcopy AS SELECT * FROM customers;

INSERT INTO customers(
    cust_id,
    cust_name,
    cust_city,
    cust_contact,
    cust_country,
    cust_state,
    cust_zip,
    cust_email
)
VALUES(
    20000,
    'YuQue',
    'TianJin',
    'Yao',
    'China',
    'TJ',
    '55555',
    'whimsy2026@outlook'
);

CREATE TABLE orderscopy AS SELECT * FROM orders;

CREATE TABLE orderitemscopy AS SELECT * FROM orderitems;