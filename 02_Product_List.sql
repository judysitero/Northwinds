-- Q1. Products 
-- Q2. Write a query to list the product id, product name, and unit price of every product
SELECT ProductID, ProductName, UnitPrice
FROM products;

-- Q3. Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice ASC;

-- Q4. What are the products that we carry where the unit price is $7.50 or less? 
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;

-- Q5. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. 
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

-- Q6 What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. 
-- If two or more have the same price, list those in ascending order by product name
SELECT ProductName, UnitsInStock, UnitPrice
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC; 

-- Q7 What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name.
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0 
ORDER BY ProductName;

-- Q8 What is the name of the table that holds the types (categories) of the items Northwind sells?