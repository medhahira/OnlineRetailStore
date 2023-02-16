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

SELECT o.orderID, o.username, sum(productID*quantity-discount) as amountPaid FROM `online retail store`.order o
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



