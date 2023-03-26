-- View Quarterly Sales of the each Category
SELECT
    Category.category_name AS Category,
    SUM(`Order`.order_amount) AS Total_Sales_Amount,
    SUM(`Order`.quantity) AS Total_Quantity_Sold
FROM
    Category
    JOIN Product ON Category.categoryID = Product.categoryID
    JOIN `Order` ON Product.productID = `Order`.productID
    JOIN Billing ON `Order`.orderID = Billing.orderID
WHERE
    `Order`.date_order_placed >= DATE_SUB(NOW(), INTERVAL 3 MONTH)
GROUP BY
    Category.category_name WITH ROLLUP
HAVING
    Category IS NOT NULL;    


--  View Curated Sales Data for Each Category
SELECT
    COALESCE(c.category_name, 'All Categories') AS Category,
    YEAR(o.date_order_placed) AS Year,
    MONTH(o.date_order_placed) AS Month,
    SUM(o.order_amount) AS Sales,
    COUNT(DISTINCT o.username) AS Customers,
    COUNT(DISTINCT o.productID) AS Products
FROM
    `Order` o
    JOIN Product p ON o.productID = p.productID
    JOIN Category c ON p.categoryID = c.categoryID
GROUP BY Category, Year, Month with ROLLUP
HAVING
    Month is NOT NULL
ORDER BY Category, Year DESC, Month DESC;

-- View Top 5 Customers(based on money spent)

SELECT 
CASE 
WHEN GROUPING(username) = 1 THEN 'All Customers'
ELSE username
END AS Customer,
SUM(order_amount) AS TotalAmount 
FROM 
`Order`
GROUP BY username with
ROLLUP
HAVING 
username IS NOT NULL 
ORDER BY 
TotalAmount DESC 
LIMIT 
5;

-- Data of items in the Inventory for each storage type

SELECT storage_type, SUM(quantity) AS amt 
FROM Inventory 
GROUP BY  storage_type with ROLLUP 
HAVING storage_type is not null;


-- GROUP BY CUBE
-- SELECT 
--   `Categrory`.categoryID, 
--   Product.productID, 
--   o.username, 
--   SUM(o.order_amount) AS total_order_amount
-- FROM `Order` o
-- LEFT JOIN Product ON o.productID = Product.productID
-- LEFT JOIN `Category` ON Product.categoryID = `Category`.categoryID
-- GROUP BY CUBE(`Category`.category_name, Product.productID, o.username);


-- grouping the products by their categoryID, return the sum of their prices for each category
-- SELECT categoryID, SUM(price)
-- FROM Product
-- GROUP BY CUBE(categoryID);
