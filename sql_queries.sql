--creating table 

CREATE TABLE ecommerce_transactions (
transaction_id INT PRIMARY KEY, 
user_name VARCHAR(100),
age INT,
country VARCHAR(100),
product_category VARCHAR(100),
purchase_amount NUMERIC(10,2),
payment_method VARCHAR(50),
transaction_date DATE 
);

-- Total number of transactions

SELECT *
FROM ecommerce_transactions;
 

-- Total Revenue
SELECT SUM(purchase_amount)
FROM ecommerce_transactions;

-- Average Transaction Value
SELECT AVG(purchase_amount)
FROM ecommerce_transactions;

-- Revenue by Country
SELECT
    country,
    SUM(purchase_amount)
FROM ecommerce_transactions
GROUP BY country
ORDER BY SUM(purchase_amount) DESC;

-- Revenue by Product Category
SELECT
    product_category,
    SUM(purchase_amount)
FROM ecommerce_transactions
GROUP BY product_category
ORDER BY SUM(purchase_amount) DESC;  


--- total spent by customers 
-- Total Revenue
SELECT SUM(purchase_amount)
FROM ecommerce_transactions;

-- Average Transaction Value
SELECT AVG(purchase_amount)
FROM ecommerce_transactions;

-- Revenue by Country
SELECT
    country,
    SUM(purchase_amount)
FROM ecommerce_transactions
GROUP BY country
ORDER BY SUM(purchase_amount) DESC;

-- Revenue by Product Category
SELECT
    product_category,
    SUM(purchase_amount)
FROM ecommerce_transactions
GROUP BY product_category
ORDER BY SUM(purchase_amount) DESC;


-- Total Revenue
SELECT SUM(purchase_amount)
FROM ecommerce_transactions;

-- Average Transaction Value
SELECT AVG(purchase_amount)
FROM ecommerce_transactions;

-- Revenue by Country
SELECT
    country,
    SUM(purchase_amount)
FROM ecommerce_transactions
GROUP BY country
ORDER BY SUM(purchase_amount) DESC;
 

--- total AVG Spent by customer 

SELECT AVG(total_spent)
FROM (
    SELECT
        user_name,
        SUM(purchase_amount) AS total_spent
    FROM ecommerce_transactions
    GROUP BY user_name
) AS customer_totals;