START TRANSACTION;
LOCK TABLE Product Write;
UPDATE Product SET price = price + 1000 WHERE productID = 1;
Unlock tables;
COMMIT;

Start TRANSACTION;
LOCK TABLE Product Write;
UPDATE Product SET price = price + 200 WHERE productID = 1;
Unlock Tables;
COMMIT;


SELECT * FROM Product WHERE productID = 1;

-- using FOR UPDATE to lock a row

START TRANSACTION;
SELECT * FROM Product WHERE productID = 1 for update;
UPDATE Product SET price = price + 1000 WHERE productID = 1;
COMMIT;

Start TRANSACTION;
SELECT * FROM Product WHERE productID = 1 FOR UPDATE;
UPDATE Product SET price = price + 200 WHERE productID = 1;
COMMIT;

SELECT * FROM Product WHERE productID = 1;
