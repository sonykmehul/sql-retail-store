-- Insert sample customers
INSERT INTO customers (customer_id, first_name, last_name, email, signup_date, country)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2022-03-15', 'United States'),
(2, 'Jane', 'Smith', NULL, '2022-05-22', 'Canada'),
(3, 'Robert', 'Johnson', 'robert.j@example.com', '2022-01-10', 'United States'),
(4, 'Emily', 'Davis', 'emily.d@example.com', '2023-01-02', 'United Kingdom'),
(5, 'Michael', 'Wilson', 'mike.w@example.com', '2022-09-30', 'Australia'),
(6, 'Sarah', 'Taylor', 'sarah.t@example.com', '2023-02-18', 'Canada'),
(7, 'David', 'Brown', NULL, '2022-07-05', 'United States'),
(8, 'Lisa', 'Anderson', 'lisa.a@example.com', '2023-03-22', 'United Kingdom'),
(9, 'James', 'Thomas', 'james.t@example.com', '2022-11-11', 'Australia'),
(10, 'Amanda', 'Jackson', 'amanda.j@example.com', '2023-04-05', 'United States'),
(11, 'Daniel', 'White', 'daniel.w@example.com', '2022-08-19', 'Canada'),
(12, 'Sophia', 'Harris', 'sophia.h@example.com', '2023-05-12', 'United Kingdom'),
(13, 'Matthew', 'Martin', 'matthew.m@example.com', '2022-04-27', 'Australia'),
(14, 'Olivia', 'Thompson', 'olivia.t@example.com', '2023-06-01', 'United States'),
(15, 'Ethan', 'Garcia', 'ethan.g@example.com', '2022-10-08', 'Canada'),
(16, 'Ava', 'Martinez', 'ava.m@example.com', '2023-07-15', 'United Kingdom'),
(17, 'Noah', 'Robinson', NULL, '2022-06-30', 'Australia'),
(18, 'Mia', 'Clark', 'mia.c@example.com', '2023-08-21', 'United States');

-- Insert sample products
INSERT INTO products (product_id, product_name, category, unit_price, discontinued)
VALUES
(1, 'Wireless Headphones', 'Electronics', 149.99, FALSE),
(2, 'Mechanical Keyboard', 'Electronics', 89.99, FALSE),
(3, 'Bluetooth Speaker', 'Electronics', 59.99, TRUE),
(4, 'Stainless Steel Water Bottle', 'Home Goods', 24.99, FALSE),
(5, 'Ceramic Coffee Mug Set', 'Home Goods', 34.99, FALSE),
(6, 'Premium Yoga Mat', 'Fitness', 49.99, FALSE),
(7, 'Resistance Bands Set', 'Fitness', 19.99, FALSE),
(8, 'Hardcover Notebook', 'Office Supplies', 12.99, FALSE),
(9, 'Ballpoint Pen Pack', 'Office Supplies', 8.99, FALSE),
(10, 'Wireless Charger', 'Electronics', 29.99, FALSE),
(11, 'Dumbbell Set 10kg', 'Fitness', 79.99, TRUE),
(12, 'Desk Organizer', 'Office Supplies', 17.99, FALSE);

-- Insert sample orders and order items
INSERT INTO orders (order_id, customer_id, order_date, shipping_status)
VALUES
(1, 1, '2023-10-02', 'Delivered'), (2, 1, '2023-11-15', 'Delivered'),
(3, 2, '2023-10-05', 'Shipped'), (4, 3, '2023-09-28', 'Delivered'),
(5, 4, '2023-10-10', 'Cancelled'), (6, 4, '2023-10-12', 'Delivered'),
(7, 5, '2023-09-15', 'Delivered'), (8, 6, '2023-10-20', 'Delivered'),
(9, 7, '2023-11-02', 'Delivered'), (10, 8, '2023-10-25', 'Delivered'),
(11, 9, '2023-09-30', 'Cancelled'), (12, 10, '2023-11-05', 'Delivered'),
(13, 11, '2023-10-08', 'Delivered'), (14, 12, '2023-11-10', 'Delivered'),
(15, 13, '2023-09-20', 'Delivered'), (16, 14, '2023-11-18', 'Delivered'),
(17, 15, '2023-10-30', 'Delivered'), (18, 16, '2023-11-22', 'Delivered'),
(19, 17, '2023-10-15', 'Shipped'), (20, 18, '2023-11-25', 'Delivered'),
(21, 1, '2023-12-02', 'Delivered'), (22, 4, '2023-12-05', 'Delivered'),
(23, 6, '2023-12-10', 'Delivered'), (24, 8, '2023-12-12', 'Delivered'),
(25, 10, '2023-12-15', 'Delivered'), (26, 12, '2023-12-18', 'Delivered'),
(27, 14, '2023-12-20', 'Delivered'), (28, 16, '2023-12-22', 'Delivered'),
(29, 18, '2023-12-25', 'Delivered'), (30, 3, '2023-12-28', 'Delivered'),
(31, 5, '2023-12-30', 'Delivered'), (32, 7, '2023-12-31', 'Cancelled');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, discount_applied)
VALUES
(1,1,1,1,0.00), (2,1,10,1,0.10), (3,2,2,1,0.00), (4,2,8,2,0.05),
(5,3,4,2,0.00), (6,3,5,1,0.00), (7,4,1,1,0.00), (8,4,7,3,0.15),
(9,6,6,1,0.00), (10,6,12,1,0.00), (11,7,10,2,0.00), (12,7,9,5,0.00),
(13,8,4,3,0.05), (14,8,6,1,0.10), (15,9,2,1,0.00), (16,9,8,3,0.00),
(17,10,1,1,0.20), (18,10,10,1,0.00), (19,12,6,2,0.10), (20,12,7,2,0.00),
(21,13,5,2,0.00), (22,13,12,1,0.00), (23,14,1,1,0.00), (24,14,2,1,0.05),
(25,15,4,1,0.00), (26,15,7,4,0.10), (27,16,10,2,0.00), (28,16,8,2,0.05),
(29,17,5,3,0.00), (30,17,12,2,0.00), (31,18,1,1,0.15), (32,18,6,1,0.00),
(33,20,2,1,0.00), (34,20,10,1,0.00), (35,21,4,2,0.05), (36,21,5,1,0.00),
(37,22,1,1,0.20), (38,22,7,2,0.00), (39,23,6,1,0.10), (40,23,12,1,0.00),
(41,24,2,1,0.05), (42,24,8,3,0.00), (43,25,10,2,0.00), (44,25,9,4,0.00),
(45,26,1,1,0.00), (46,26,6,1,0.10), (47,27,4,3,0.05), (48,27,5,1,0.00),
(49,28,2,1,0.00), (50,28,10,1,0.00), (51,29,1,1,0.15), (52,29,7,2,0.00),
(53,30,8,5,0.00), (54,30,9,3,0.00), (55,31,6,2,0.10), (56,31,12,1,0.00),
(57,32,1,1,0.00), (58,32,2,1,0.00);
