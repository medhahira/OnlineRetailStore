-- Suppose we want to analyze the total sales amount and quantity of products sold by category and sub-category for the last quarter

SELECT
    IFNULL(Category.category_name, 'Total') AS Category,
    IFNULL(Product.storage_type, 'Total') AS Subcategory,
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
    Category.category_name,
    Product.storage_type WITH ROLLUP
HAVING
    Category IS NOT NULL OR Product.storage_type IS NULL


-- This query retrieves sales data for each category, year, and month, including the total sales, the number of unique customers, and the number of unique products sold in each group. It uses ROLLUP to calculate subtotals and grand totals for each level of grouping, and COALESCE to replace NULL values in the Category column with a string representing all categories. Finally, it orders the results by category, year, and month, with subtotals and grand totals included.

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
ORDER BY Category, Year DESC, Month DESC;
