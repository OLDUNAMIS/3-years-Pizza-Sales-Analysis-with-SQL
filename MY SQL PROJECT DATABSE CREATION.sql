CREATE database PIZZA_PROJECTS;



USE PIZZA_PROJECTS;
-- CREATE TABLE FOR PIZZAS
CREATE TABLE pizzas (
	pizza_id VARCHAR(50),
	pizza_type_id text,
	pizza_size varchar(3),
	price float
);


-- CREATE TABLE FOR pizza_type
CREATE TABLE pizza_type (
    pizza_type_id text,
    name VARCHAR(50),
    category VARCHAR(500),
    ingredients varchar(500)
);

-- Create order_2023
CREATE TABLE order_2023 (
    order_id INT,
    order_date DATE NOT NULL,
    order_time time
);


-- Create order_2024
CREATE TABLE order_2024 (
    order_id INT,
    order_date DATE NOT NULL,
    order_time time
);


-- Create order_2025
CREATE TABLE order_2025 (
    order_id INT,
    order_date DATE NOT NULL,
    order_time time
);


-- CREATE TABLE FOR order_details_2023
CREATE TABLE order_details_2023 (
    order_details_id VARCHAR(50),
    order_id VARCHAR(50),
    pizza_id VARCHAR(500),
    quantity INT
);


-- CREATE TABLE FOR order_details_2024
CREATE TABLE order_details_2024 (
    order_details_id VARCHAR(50),
    order_id VARCHAR(50),
    pizza_id VARCHAR(500),
    quantity INT
);


-- CREATE TABLE FOR order_details_2025
CREATE TABLE order_details_2025 (
    order_details_id VARCHAR(50),
    order_id VARCHAR(50),
    pizza_id VARCHAR(500),
    quantity INT
);