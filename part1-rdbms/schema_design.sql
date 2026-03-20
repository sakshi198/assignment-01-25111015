CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);
CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address TEXT
);
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);
CREATE TABLE OrderItems (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers VALUES
('C001', 'Amit Sharma', 'amit.sharma@email.com', 'Delhi'),
('C002', 'Priya Mehta', 'priya.mehta@email.com', 'Mumbai'),
('C003', 'Rohan Das', 'rohan.das@email.com', 'Pune'),
('C004', 'Sneha Kapoor', 'sneha.kapoor@email.com', 'Bangalore'),
('C005', 'Rahul Verma', 'rahul.verma@email.com', 'Delhi');
INSERT INTO Products VALUES
('P001', 'Laptop', 'Electronics', 50000),
('P002', 'Mouse', 'Electronics', 500),
('P003', 'Keyboard', 'Electronics', 1500),
('P004', 'Monitor', 'Electronics', 10000),
('P005', 'Tablet', 'Electronics', 20000);
INSERT INTO SalesReps VALUES
('S001', 'Raj Malhotra', 'raj@email.com', 'Delhi Office'),
('S002', 'Simran Kaur', 'simran@email.com', 'Mumbai Office'),
('S003', 'Arjun Singh', 'arjun@email.com', 'Bangalore Office'),
('S004', 'Neha Sharma', 'neha@email.com', 'Pune Office'),
('S005', 'Karan Patel', 'karan@email.com', 'Delhi Office');
INSERT INTO Orders VALUES
('O001', 'C001', 'S001', '2024-01-01'),
('O002', 'C002', 'S002', '2024-01-02'),
('O003', 'C003', 'S003', '2024-01-03'),
('O004', 'C004', 'S004', '2024-01-04'),
('O005', 'C005', 'S005', '2024-01-05');
INSERT INTO OrderItems VALUES
('O001', 'P001', 1),
('O002', 'P002', 2),
('O003', 'P003', 1),
('O004', 'P004', 1),
('O005', 'P005', 1);