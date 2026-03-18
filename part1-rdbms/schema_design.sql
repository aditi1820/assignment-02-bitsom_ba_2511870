-- Create Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- Create Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Create Sales Representatives Table
CREATE TABLE sales_reps (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100)
);

-- Create Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- Create Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
('CUST001', 'Aditi', 'Mumbai'),
('CUST002', 'Rahul', 'Delhi'),
('CUST003', 'Sneha', 'Bangalore'),
('CUST004', 'Aman', 'Pune'),
('CUST005', 'Neha', 'Chennai');

-- Insert Products
INSERT INTO products VALUES
('PROD001', 'Laptop', 50000),
('PROD002', 'Phone', 20000),
('PROD003', 'Shoes', 3000),
('PROD004', 'Watch', 5000),
('PROD005', 'Bag', 1500);

-- Insert Sales Reps
INSERT INTO sales_reps VALUES
('REP001', 'Raj'),
('REP002', 'Simran'),
('REP003', 'Karan'),
('REP004', 'Meera'),
('REP005', 'Arjun');

-- Insert Orders
INSERT INTO orders VALUES
('ORD001', 'CUST001', 'REP001', '2024-01-01'),
('ORD002', 'CUST002', 'REP002', '2024-01-02'),
('ORD003', 'CUST003', 'REP003', '2024-01-03'),
('ORD004', 'CUST004', 'REP004', '2024-01-04'),
('ORD005', 'CUST005', 'REP005', '2024-01-05');

-- Insert Order Items
INSERT INTO order_items VALUES
(1, 'ORD001', 'PROD001', 1),
(2, 'ORD002', 'PROD002', 2),
(3, 'ORD003', 'PROD003', 1),
(4, 'ORD004', 'PROD004', 3),
(5, 'ORD005', 'PROD005', 2);