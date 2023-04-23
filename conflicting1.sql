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