CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE dim_stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE dim_services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100),
    price_per_lb FLOAT
);

CREATE TABLE fact_sales (
    transaction_id INT PRIMARY KEY,
    date DATE,
    customer_id INT,
    store_id INT,
    service_id INT,
    lbs FLOAT,
    revenue FLOAT
);