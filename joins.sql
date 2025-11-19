-- EXERCISES - JOINS

-- Q1. List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products AS p
JOIN categories AS c 
ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;

-- Q2. List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, CompanyName AS SupplierName
FROM products AS p
JOIN suppliers AS s 
ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75.00
ORDER BY p.ProductName;

-- Q3. List the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
SELECT p.ProductID, p.ProductName, UnitPrice, c.CategoryName, s.CompanyName AS SupplierName
FROM products AS p
JOIN categories AS c 
ON p.CategoryID = c.CategoryID
JOIN suppliers AS s
ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;


-- Q4. What is the product name(s) and categories of the most expensive products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.



-- Q5. List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany.



-- Q6. List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"? 