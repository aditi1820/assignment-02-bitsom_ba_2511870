-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    month INT,
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert Date Data
INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-02-01', 2, 2023),
(3, '2023-03-01', 3, 2023),
(4, '2023-04-01', 4, 2023),
(5, '2023-05-01', 5, 2023);

-- Insert Store Data
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore'),
(4, 'Store D', 'Pune'),
(5, 'Store E', 'Chennai');

-- Insert Product Data
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Phone', 'Electronics'),
(3, 'Shirt', 'Clothing'),
(4, 'Shoes', 'Clothing'),
(5, 'Milk', 'Groceries');

-- Insert Fact Data
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 2, 2, 2, 3, 60000),
(3, 3, 3, 3, 5, 7500),
(4, 4, 4, 4, 4, 12000),
(5, 5, 5, 5, 10, 500),
(6, 1, 2, 1, 1, 50000),
(7, 2, 3, 2, 2, 40000),
(8, 3, 4, 3, 3, 4500),
(9, 4, 5, 4, 2, 6000),
(10, 5, 1, 5, 6, 300);