-- Customers--
INSERT INTO customers VALUES
(1, 'Alice', 'alice@mail.com', 'USA'),
(2, 'Bob', 'bob@mail.com', 'Canada'),
(3, 'Charlie', 'charlie@mail.com', 'UK'),
(4, 'Richard', 'richard@mail.com', 'USA'),
(5, 'Tarayummy', 'tarayummy@mail.com', 'USA'),
(6, 'Camilacabello', 'camila@mail.com', 'UK');

-- Products--
INSERT INTO products VALUES
(1, 'Echo Dot', 'Electronics', 50.00),
(2, 'Kindle Paperwhite', 'Books', 120.00),
(3, 'USB Cable', 'Accessories', 10.00),
(4, 'Kindel Killernotes', 'Books', 150.00),
(5, 'Loreal Shampoo', 'Cosmetics',130.00),
(6, 'Maybelline Eyeliner', 'Cosmetics',100.00);

-- Orders
INSERT INTO orders VALUES
(101, 1, '2024-01-15', 'Shipped'),
(102, 2, '2024-01-20', 'Delivered'),
(103, 3, '2024-02-10', 'Cancelled'),
(104, 4, '2024-02-20', 'Delivered'),
(105, 5,'2024-02-19', 'Shipped'),
(106, 6,'2024-01-15', 'Delivered');

-- Order Items--
INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 102, 3, 2),
(3, 103, 2, 1),
(4, 104, 3, 3),
(5, 105, 4, 4),
(6, 106, 6, 5);

-- Payments--
INSERT INTO payments VALUES
(1, 101, '2024-01-16', 70.00, 'Credit Card'),
(2, 102, '2024-01-21', 120.00, 'PayPal'),
(3, 103, '2024-01-22', 10.00, 'PayPal'),
(4, 104, '2024-01-23', 150.00, 'Credit Card');
