-- Q1. Which pizza types contributed the most revenue each year (2023–2025)? FOR 2023
select pizza_type.name,
		ROUND( SUM(order_details_2023.quantity* pizzas.price), 0) AS revenue2023
from pizza_type
JOIN
pizzas ON pizzas.pizza_type_id = pizza_type.pizza_type_id
JOIN
order_details_2023 ON pizzas.pizza_id = order_details_2023.pizza_id
group by pizza_type.name
order by revenue2023 DESC
LIMIT 1;



-- Q1. Which pizza types contributed the most revenue each year (2023–2025)? FOR 2024
select pizza_type.name,
		ROUND ( SUM(order_details_2024.quantity* pizzas.price),0) AS revenue2024
from pizza_type
JOIN
pizzas ON pizzas.pizza_type_id = pizza_type.pizza_type_id
JOIN
order_details_2024 ON pizzas.pizza_id = order_details_2024.pizza_id
group by pizza_type.name
order by revenue2024 DESC
LIMIT 1;


-- Q1 Which pizza types contributed the most revenue each year (2023–2025)? FOR 2025
select pizza_type.name,
		ROUND ( SUM(order_details_2025.quantity* pizzas.price),0) AS revenue2025
from pizza_type
JOIN
pizzas ON pizzas.pizza_type_id = pizza_type.pizza_type_id
JOIN
order_details_2025 ON pizzas.pizza_id = order_details_2025.pizza_id
group by pizza_type.name
order by revenue2025 DESC
LIMIT 1;



-- Q2. Top 5 best-selling pizza sizes by quantity and revenue, per year? FOR 2023

SELECT
	YEAR(order_2023.order_date) AS year,
	pizzas.pizza_size,
	SUM(order_details_2023.quantity) AS total_quantity,
	ROUND(SUM(order_details_2023.quantity * pizzas.price), 0) AS total_revenue_2023
FROM
        order_details_2023
JOIN order_2023 ON order_details_2023.order_id = order_2023.order_id
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
GROUP BY YEAR(order_2023.order_date), 
	pizzas.pizza_size
LIMIT 5;



-- Q2. Top 5 best-selling pizza sizes by quantity and revenue, per year? FOR 2024

SELECT
	YEAR(order_2024.order_date) AS year,
	pizzas.pizza_size,
	SUM(order_details_2024.quantity) AS total_quantity,
	ROUND(SUM(order_details_2024.quantity * pizzas.price), 0) AS total_revenue_2024
FROM
        order_details_2024
JOIN order_2024 ON order_details_2024.order_id = order_2024.order_id
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
GROUP BY YEAR(order_2024.order_date), 
	pizzas.pizza_size
LIMIT 5;



-- Q2. Top 5 best-selling pizza sizes by quantity and revenue, per year? FOR 2025

SELECT
	YEAR(order_2025.order_date) AS year,
	pizzas.pizza_size,
	SUM(order_details_2025.quantity) AS total_quantity,
	ROUND(SUM(order_details_2025.quantity * pizzas.price), 0) AS total_revenue_2025
FROM
        order_details_2025
JOIN order_2025 ON order_details_2025.order_id = order_2025.order_id
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
GROUP BY YEAR(order_2025.order_date), 
	pizzas.pizza_size
LIMIT 5;




-- Q3.. Monthly revenue trend across years—any seasonal patterns? FOR 2023

SELECT
    YEAR(order_2023.order_date) AS year,
    MONTH(order_2023.order_date) AS month,
    ROUND(SUM(order_details_2023.quantity * pizzas.price), 0) AS monthly_revenue_2023
FROM
    order_details_2023
JOIN order_2023 ON order_details_2023.order_id = order_2023.order_id
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
GROUP BY
    YEAR(order_2023.order_date), MONTH(order_2023.order_date)
ORDER BY
    year, month;
    
    
    -- Q3.. Monthly revenue trend across years—any seasonal patterns? FOR 2024

SELECT
    YEAR(order_2024.order_date) AS year,
    MONTH(order_2024.order_date) AS month,
    ROUND(SUM(order_details_2024.quantity * pizzas.price), 0) AS monthly_revenue_2024
FROM
    order_details_2024
JOIN order_2024 ON order_details_2024.order_id = order_2024.order_id
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
GROUP BY
    YEAR(order_2024.order_date), MONTH(order_2024.order_date)
ORDER BY
    year, month;


-- Q3.. Monthly revenue trend across years—any seasonal patterns? FOR 2025

SELECT
    YEAR(order_2025.order_date) AS year,
    MONTH(order_2025.order_date) AS month,
    ROUND(SUM(order_details_2025.quantity * pizzas.price), 0) AS monthly_revenue_2025
FROM
    order_details_2025
JOIN order_2025 ON order_details_2025.order_id = order_2025.order_id
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
GROUP BY
    YEAR(order_2025.order_date), MONTH(order_2025.order_date)
ORDER BY
    year, month;



-- Q4. Which day of the week has highest orders and revenue IN 2023?

SELECT dayname(order_2023.order_date) AS DAY_OF_THE_WEEK_IN_2023,
	count(*) AS TOTAL_NO_OF_ORDERS
FROM order_2023
GROUP BY dayname(order_2023.order_date)
ORDER BY TOTAL_NO_OF_ORDERS DESC;


-- Q4. Which day of the week has highest orders and revenue IN 2024?

SELECT dayname(order_2024.order_date) AS DAY_OF_THE_WEEK_IN_2024,
	count(*) AS TOTAL_NO_OF_ORDERS
FROM order_2024
GROUP BY dayname(order_2024.order_date)
ORDER BY TOTAL_NO_OF_ORDERS DESC;


-- Q4. Which day of the week has highest orders and revenue IN 2025?

SELECT dayname(order_2025.order_date) AS DAY_OF_THE_WEEK_IN_2025,
	count(*) AS TOTAL_NO_OF_ORDERS
FROM order_2025
GROUP BY dayname(order_2025.order_date)
ORDER BY TOTAL_NO_OF_ORDERS DESC;

    
    
 -- Q5. Which pizzas have highest avg quantity per order FOR 2023  
 
SELECT
    pizza_type.name AS PIZZA_NAME,
    AVG(order_details_2023.quantity) AS AVG_QTY_PER_ORDER_FOR_2023
FROM
    order_details_2023
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name
ORDER BY
    AVG_QTY_PER_ORDER_FOR_2023 DESC
LIMIT 1;




 -- Q5. Which pizzas have highest avg quantity per order FOR 2024  
SELECT
    pizza_type.name AS PIZZA_NAME,
    AVG(order_details_2024.quantity) AS AVG_QTY_PER_ORDER_FOR_2024
FROM
    order_details_2024
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name
ORDER BY
    AVG_QTY_PER_ORDER_FOR_2024 DESC
LIMIT 1;



-- Q5. Which pizzas have highest avg quantity per order FOR 2024  
SELECT
    pizza_type.name AS PIZZA_NAME,
    AVG(order_details_2025.quantity) AS AVG_QTY_PER_ORDER_FOR_2025
FROM
    order_details_2025
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name
ORDER BY
    AVG_QTY_PER_ORDER_FOR_2025 DESC
LIMIT 1;



-- Q6. 6. Rank pizza types within each category by total revenue per year. FOR 2023.

SELECT 
YEAR(order_2023.order_date) AS year2023,
    pizza_type.category,
    pizza_type.name AS pizza_type,
    ROUND( SUM(order_details_2023.quantity * pizzas.price), 2) AS Total_revenue2023,
     RANK() OVER (
        PARTITION BY YEAR(order_2023.order_date), pizza_type.category
        ORDER BY SUM(order_details_2023.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2023
JOIN order_2023 ON order_details_2023.order_id = order_2023.order_id
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2023.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
    
    
    
 -- Q6. 6. Rank pizza types within each category by total revenue per year. FOR 2024.
 
SELECT 
YEAR(order_2024.order_date) AS year2024,
    pizza_type.category,
    pizza_type.name AS pizza_type,
    ROUND( SUM(order_details_2024.quantity * pizzas.price), 2) AS Total_revenue2024,
     RANK() OVER (
        PARTITION BY YEAR(order_2024.order_date), pizza_type.category
        ORDER BY SUM(order_details_2024.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2024
JOIN order_2024 ON order_details_2024.order_id = order_2024.order_id
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2024.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
    
    

-- Q6. 6. Rank pizza types within each category by total revenue per year. FOR 2025.

SELECT 
YEAR(order_2025.order_date) AS year2025,
    pizza_type.category,
    pizza_type.name AS pizza_type,
	ROUND( SUM(order_details_2025.quantity * pizzas.price), 2) AS Total_revenue2025,
     RANK() OVER (
        PARTITION BY YEAR(order_2025.order_date), pizza_type.category
        ORDER BY SUM(order_details_2025.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2025
JOIN order_2025 ON order_details_2025.order_id = order_2025.order_id
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2025.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
    
    
   -- Q7. Rank pizza types by total quantity sold per year. FOR 2023

SELECT 
YEAR(order_2023.order_date) AS year2023,
    pizza_type.category,
    pizza_type.name AS pizza_type,
    COUNT(order_details_2023.quantity) AS Total_QTY_NUMBER_FOR_2023,
     RANK() OVER (
        PARTITION BY YEAR(order_2023.order_date), pizza_type.category
        ORDER BY SUM(order_details_2023.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2023
JOIN order_2023 ON order_details_2023.order_id = order_2023.order_id
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2023.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
 
 
 
 -- Q7. Rank pizza types by total quantity sold per year. FOR 2024
 
SELECT 
YEAR(order_2024.order_date) AS year2024,
    pizza_type.category,
    pizza_type.name AS pizza_type,
    COUNT(order_details_2024.quantity * pizzas.price) AS Total_revenue2024,
     RANK() OVER (
        PARTITION BY YEAR(order_2024.order_date), pizza_type.category
        ORDER BY SUM(order_details_2024.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2024
JOIN order_2024 ON order_details_2024.order_id = order_2024.order_id
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2024.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
    
    

-- Q7. Rank pizza types by total quantity sold per year. FOR 2025

SELECT 
YEAR(order_2025.order_date) AS year2025,
    pizza_type.category,
    pizza_type.name AS pizza_type,
	COUNT(order_details_2025.quantity * pizzas.price) AS Total_revenue2025,
     RANK() OVER (
        PARTITION BY YEAR(order_2025.order_date), pizza_type.category
        ORDER BY SUM(order_details_2025.quantity * pizzas.price) DESC
    ) AS rank_in_category
FROM
    order_details_2025
JOIN order_2025 ON order_details_2025.order_id = order_2025.order_id
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    YEAR(order_2025.order_date), 
    pizza_type.category, 
    pizza_type.name
ORDER BY
    pizza_type.category;
    


-- Q8. Which sizes dominate within each pizza type (e.g. XL for Meat Lovers) FOR 2023?

SELECT
    pizza_type.name AS pizza_type,
    pizzas.pizza_size,
    SUM(order_details_2023.quantity) AS total_quantity,
    RANK() OVER (
        PARTITION BY pizza_type.name
        ORDER BY SUM(order_details_2023.quantity) DESC
    ) AS size_rank
FROM
    order_details_2023
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name, 
    pizzas.pizza_size
ORDER BY
    pizza_type.name, 
    size_rank;
 
 
 
 -- Q8. Which sizes dominate within each pizza type (e.g. XL for Meat Lovers) FOR 2024?

SELECT
    pizza_type.name AS pizza_type,
    pizzas.pizza_size,
    SUM(order_details_2024.quantity) AS total_quantity,
    RANK() OVER (
        PARTITION BY pizza_type.name
        ORDER BY SUM(order_details_2024.quantity) DESC
    ) AS size_rank
FROM
    order_details_2024
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name, 
    pizzas.pizza_size
ORDER BY
    pizza_type.name, 
    size_rank;
    

    
     -- Q8. Which sizes dominate within each pizza type (e.g. XL for Meat Lovers) FOR 2025?

SELECT
    pizza_type.name AS pizza_type,
    pizzas.pizza_size,
    SUM(order_details_2025.quantity) AS total_quantity,
    RANK() OVER (
        PARTITION BY pizza_type.name
        ORDER BY SUM(order_details_2025.quantity) DESC
    ) AS size_rank
FROM
    order_details_2025
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
JOIN pizza_type ON pizzas.pizza_type_id = pizza_type.pizza_type_id
GROUP BY
    pizza_type.name, 
    pizzas.pizza_size
ORDER BY
    pizza_type.name, 
    size_rank;
    
    
    
    
    
   
   -- Q9. Top 10 highest-revenue orders and pizzas involved FOR 2023?

    SELECT
        order_details_2023.order_id,
        pizzas.pizza_type_id,
        ROUND( SUM(order_details_2023.quantity * pizzas.price), 2) AS total_order_revenue
    FROM
        order_details_2023
    JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
    GROUP BY
        order_details_2023.order_id,
        pizzas.pizza_type_id
	ORDER BY total_order_revenue DESC
	LIMIT 10;



-- Q9. Top 10 highest-revenue orders and pizzas involved FOR 2024?

    SELECT
        order_details_2024.order_id,
        pizzas.pizza_type_id,
        ROUND( SUM(order_details_2024.quantity * pizzas.price), 2) AS total_order_revenue
    FROM
        order_details_2024
    JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
    GROUP BY
        order_details_2024.order_id,
        pizzas.pizza_type_id
	ORDER BY total_order_revenue DESC
	LIMIT 10;



-- Q9. Top 10 highest-revenue orders and pizzas involved FOR 2025?

    SELECT
        order_details_2025.order_id,
        pizzas.pizza_type_id,
        ROUND( SUM(order_details_2025.quantity * pizzas.price), 2) AS total_order_revenue
    FROM
        order_details_2025
    JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
    GROUP BY
        order_details_2025.order_id,
        pizzas.pizza_type_id
	ORDER BY total_order_revenue DESC
	LIMIT 10;




-- Q10. Average price per pizza (adjusted by quantity) per order FOR 2023?

SELECT
    order_details_2023.order_id,
    ROUND( SUM(order_details_2023.quantity * pizzas.price), 2) AS total_revenue,
    SUM(order_details_2023.quantity) AS total_quantity,
    ROUND(SUM(order_details_2023.quantity * pizzas.price) / SUM(order_details_2023.quantity), 2) AS avg_price_per_pizza
FROM
    order_details_2023 
JOIN pizzas ON order_details_2023.pizza_id = pizzas.pizza_id
GROUP BY
    order_details_2023.order_id
ORDER BY
    order_details_2023.order_id;
    
    
    
-- Q10. Average price per pizza (adjusted by quantity) per order FOR 2024?

SELECT
    order_details_2024.order_id,
    ROUND( SUM(order_details_2024.quantity * pizzas.price), 2) AS total_revenue,
    SUM(order_details_2024.quantity) AS total_quantity,
    ROUND(SUM(order_details_2024.quantity * pizzas.price) / SUM(order_details_2024.quantity), 2) AS avg_price_per_pizza
FROM
    order_details_2024 
JOIN pizzas ON order_details_2024.pizza_id = pizzas.pizza_id
GROUP BY
    order_details_2024.order_id
ORDER BY
    order_details_2024.order_id;
    
   
-- Q10. Average price per pizza (adjusted by quantity) per order FOR 2024?

SELECT
    order_details_2025.order_id,
    ROUND( SUM(order_details_2025.quantity * pizzas.price), 2) AS total_revenue,
    SUM(order_details_2025.quantity) AS total_quantity,
    ROUND(SUM(order_details_2025.quantity * pizzas.price) / SUM(order_details_2025.quantity), 2) AS avg_price_per_pizza
FROM
    order_details_2025 
JOIN pizzas ON order_details_2025.pizza_id = pizzas.pizza_id
GROUP BY
    order_details_2025.order_id
ORDER BY
    order_details_2025.order_id;   