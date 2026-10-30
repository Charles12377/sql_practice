CREATE TABLE productsnew
(
    prod_id         CHAR(10)        NOT NULL,
    vend_id         CHAR(10)        NOT NULL,
    prod_name       CHAR(254)       NOT NULL,
    prod_price      DECIMAL(8,2)    NOT NULL,
    prod_desc       VARCHAR(1000)   NULL,
    prod_address    VARCHAR(1000)               
    #不指定NOT NULL，就认为是默认值NULL
    #NULL值是没有值，不是空字符串
);

CREATE TABLE orderitemsnew
(
    order_num       INTEGER         NOT NULL,
    order_item      INTEGER         NOT NULL,
    prod_id         CHAR(10)        NOT NULL,
    #DEFAULT 1指示DBMS,如果不给出数量就使用数量1
    quantity        INTEGER         NOT NULL        DEFAULT 1,
    item_price      DECIMAL(8,2)    NOT NULL
);

ALTER TABLE vendors
ADD vend_phone char(20);

ALTER TABLE vendors
DROP COLUMN vend_phone;

ALTER TABLE vendors
ADD vend_web VARCHAR(1000);

UPDATE vendors
SET vend_web = '123@cc.com';

UPDATE vendors
SET vend_web = '234@cc.com'
WHERE vend_id = 1003;