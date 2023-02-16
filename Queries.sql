-- 1 Get the products with quantity<5 (inventory table)

SELECT productID,quantity FROM `online retail store`.inventory
where quantity<5;

-- 2 Top ten bestseller products

SELECT p.productID, p.name, count(*) as NumOfOrderedTimes FROM `online retail store`.order o
right join `online retail store`.product p
on p.productID = o.productID
group by p.productID,p.name
order by count(*) desc
LIMIT 10;

-- 3 Get the total amount of money donated to NGO till yet

SELECT n.ngoID, n.name, n.registration_number, SUM(b.amount_donated) as funds_donated
FROM `online retail store`.billing b
left join `online retail store`.ngo n
on n.ngoID = b.ngoID
group by n.ngoID
order by funds_donated desc;

-- 4 Get the total no. of orders by customers in descending order (RECHECK)

SELECT username, count(*) as totalOrders FROM `online retail store`.order o
group by o.username
order by count(*) desc;
SELECT username, orderID, count(*) as totalProductsPerOrder FROM `online retail store`.order o
group by orderID,username
order by count(*) desc;


-- 5 Get the total order amount

SELECT o.orderID, o.username, round(sum(p.price*o.quantity-o.discount),2) as amountPaid FROM `online retail store`.order o, `online retail store`.product p
where p.productID = o.productID
group by orderID,username;

-- 6 Orders that are not delivered

SELECT orderID FROM `online retail store`.order o 
WHERE o.status != "delivered";

-- 7 Printing or accessing names of customers who are of a certain city

SELECT first_name, last_name FROM `online retail store`.customer 
WHERE city = "Majennang";

-- 8 Coupon expiry date (recent expiry ones in most recent order)

SELECT couponID, amount FROM `online retail store`.coupon
WHERE status_of_use = 0 AND expiry_date REGEXP "2023";

-- 9 Get delivery partner with max deliveries (bonus to top 10)

SELECT deliveryID, first_name, last_name, licence_number, (rating+deliveries_completed)*10 AS bonus 
FROM `online retail store`.deliverypartner 
ORDER BY deliveries_completed DESC, rating DESC
LIMIT 10;

-- 10 Joining Order and Billing using orderID

SELECT * FROM `online retail store`.order o
JOIN `online retail store`.billing b
	ON b.orderID = o.orderID;

-- 11 checking constraints

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='product';

-- 12 shows only valid coupons when datetime is hardcoded

SET foreign_key_checks = 0;
delete from `online retail store`.coupon c where c.expiry_date < '2023-01-01 00:00:00';
SET foreign_key_checks = 1;

-- 13 show all the products in a given category

SELECT * from `online retail store`.product p
where p.categoryID = 2;

-- 14 show number of products in a different categories

SELECT c.categoryID, c.category_name, count(*) as NumOfProducts from `online retail store`.product p, `online retail store`.category c
where p.categoryID = c.categoryID

-- 15 show number of products in cart for different customers

SELECT c.username, count(*) as quantity_in_cart FROM customer c
LEFT JOIN cart
ON cart.username = c.username
where cart.quantity is NOT NULL
GROUP BY c.username;
group by c.categoryID;

-- 16 show customers with empty cart

SELECT c.username, 0 as quantity_in_cart FROM customer c
LEFT JOIN cart
ON cart.username = c.username
where cart.quantity is NULL
GROUP BY c.username;

-- 17 Updating the total funds raised for any ngo

UPDATE ngo n1
INNER JOIN(
SELECT n.ngoID, SUM(b.amount_donated) as funds_donated
FROM `online retail store`.billing b
left join `online retail store`.ngo n
on n.ngoID = b.ngoID
group by n.ngoID) as B
on B.ngoID = n1.ngoID
SET n1.funds_raised = B.funds_donated;

-- To check for query 18

-- SET foreign_key_checks = 0;
-- -- delete from `online retail store`.`order` where orderID>0;
-- insert into `online retail store`.`order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (11, 'abc', 'out_for_delivery', 110, 1, 10, 30, '2023-01-06 13:26:46');
-- insert into `online retail store`.`order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (11, 'abc', 'out_for_delivery', 110, 2, 5, 20, '2023-01-06 13:26:46');
-- insert into `online retail store`.`order` (orderID, username, status, order_amount, productID, quantity, discount, date_order_placed) values (12, 'xyz', 'out_for_delivery', 110, 2, 5, 20, '2023-01-06 13:26:46');
-- insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (1001, 'UPI', 36340, 369.34, 7, 2, 11);
-- insert into Billing (billingID, payment_mode, bill_amount, amount_donated, ngoID, couponID, orderID) values (1002, 'UPI', 36340, 369.34, 7, 3, 12);
-- SET foreign_key_checks = 1;

-- 18 Updating the total billing amount for an order

UPDATE billing b
INNER JOIN(
SELECT o.orderID, o.username, round(sum(p.price*o.quantity-o.discount),2) as amountPaid FROM `online retail store`.order o, `online retail store`.product p
where p.productID = o.productID
group by orderID,username) as o1
on o1.orderID = b.orderID
SET b.bill_amount = o1.amountPaid;
