CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    month INT,
    year INT
);
CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);
CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id DATE,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    revenue DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);
INSERT INTO dim_date VALUES
('2024-01-01', 1, 2024),
('2024-02-01', 2, 2024),
('2024-03-01', 3, 2024);
INSERT INTO dim_store VALUES
('S1', 'Store A', 'Delhi'),
('S2', 'Store B', 'Mumbai'),
('S3', 'Store C', 'Bangalore');
INSERT INTO dim_product VALUES
('P1', 'Laptop', 'Electronics'),
('P2', 'Shirt', 'Clothing'),
('P3', 'Milk', 'Groceries');
INSERT INTO fact_sales VALUES
(1, '2024-01-01', 'S1', 'P1', 2, 100000),
(2, '2024-01-01', 'S2', 'P2', 5, 5000),
(3, '2024-02-01', 'S1', 'P3', 10, 600),
(4, '2024-02-01', 'S3', 'P1', 1, 50000),
(5, '2024-03-01', 'S2', 'P2', 3, 3000),
(6, '2024-03-01', 'S3', 'P3', 8, 480),
(7, '2024-01-01', 'S1', 'P2', 4, 4000),
(8, '2024-02-01', 'S2', 'P1', 1, 50000),
(9, '2024-03-01', 'S1', 'P3', 6, 360),
(10, '2024-03-01', 'S3', 'P2', 2, 2000);
