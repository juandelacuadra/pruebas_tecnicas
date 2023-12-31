-- ELIMINA LAS TABLAS SI EXISTEN PARA EVITAR ERRORES
DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

-- CREACIÓN DE LAS TRES TABLAS
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- VALORES DUMMIES
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john@example.com'),
    (2, 'Jane', 'Smith', 'jane@example.com'),
    (3, 'Michael', 'Johnson', 'michael@example.com'),
    (4, 'Emily', 'Williams', 'emily@example.com'),
    (5, 'David', 'Brown', 'david@example.com'),
    (6, 'Sarah', 'Jones', 'sarah@example.com'),
    (7, 'Daniel', 'Miller', 'daniel@example.com'),
    (8, 'Olivia', 'Davis', 'olivia@example.com'),
    (9, 'William', 'Wilson', 'william@example.com'),
    (10, 'Ava', 'Martinez', 'ava@example.com'),
    (11, 'James', 'Taylor', 'james@example.com'),
    (12, 'Sophia', 'Anderson', 'sophia@example.com'),
    (13, 'Benjamin', 'Thomas', 'benjamin@example.com'),
    (14, 'Isabella', 'Hernandez', 'isabella@example.com'),
    (15, 'Ethan', 'Lopez', 'ethan@example.com'),
    (16, 'Mia', 'Garcia', 'mia@example.com'),
    (17, 'Alexander', 'Lee', 'alexander@example.com'),
    (18, 'Emma', 'Moore', 'emma@example.com'),
    (19, 'Daniel', 'Jackson', 'daniel@example.com'),
    (20, 'Aiden', 'White', 'aiden@example.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 12, '2023-01-15', 170.00),
    (2, 6, '2023-02-08', 480.00),
    (3, 8, '2023-03-20', 300.00),
    (4, 4, '2023-04-05', 280.00),
    (5, 16, '2023-05-10', 270.00),
    (6, 9, '2023-06-18', 180.00),
    (7, 1, '2023-07-25', 380.00),
    (8, 10, '2023-08-03', 125.00),
    (9, 14, '2023-09-12', 340.00),
    (10, 11, '2023-10-28', 230.00),
    (11, 18, '2023-11-09', 180.00),
    (12, 17, '2023-12-15', 380.00),
    (13, 5, '2023-01-22', 125.00),
    (14, 15, '2023-02-11', 220.00),
    (15, 3, '2023-03-05', 380.00),
    (16, 2, '2023-04-19', 180.00),
    (17, 20, '2023-05-08', 380.00),
    (18, 7, '2023-06-30', 125.00),
    (19, 13, '2023-07-14', 340.00),
    (20, 19, '2023-08-27', 230.00),
    (21, 11, '2023-09-03', 180.00),
    (22, 14, '2023-10-16', 380.00),
    (23, 10, '2023-11-29', 125.00),
    (24, 16, '2023-12-08', 220.00),
    (25, 7, '2023-01-05', 380.00),
    (26, 5, '2023-02-21', 380.00),
    (27, 13, '2023-03-14', 125.00),
    (28, 3, '2023-04-30', 340.00),
    (29, 17, '2023-05-19', 230.00),
    (30, 9, '2023-06-22', 180.00),
    (31, 12, '2023-07-11', 360.00),
    (32, 15, '2023-08-07', 125.00),
    (33, 2, '2023-09-28', 340.00),
    (34, 18, '2023-10-09', 230.00),
    (35, 7, '2023-11-25', 180.00),
    (36, 4, '2023-12-17', 380.00),
    (37, 19, '2023-01-14', 125.00),
    (38, 10, '2023-02-06', 340.00),
    (39, 8, '2023-03-08', 230.00),
    (40, 20, '2023-04-02', 180.00),
    (41, 6, '2023-05-11', 380.00),
    (42, 1, '2023-06-19', 125.00),
    (43, 16, '2023-07-24', 340.00),
    (44, 14, '2023-08-13', 230.00),
    (45, 12, '2023-09-09', 180.00),
    (46, 3, '2023-10-04', 380.00),
    (47, 11, '2023-11-01', 125.00),
    (48, 9, '2023-12-18', 340.00),
    (49, 5, '2023-01-22', 230.00),
    (50, 8, '2023-02-12', 180.00);

INSERT INTO OrderItems (OrderItemID, OrderID, ProductName, Quantity, Price)
VALUES
    (1, 1, 'Laptop', 2, 75.00),
    (2, 1, 'Wireless Mouse', 1, 20.00),
    (3, 2, 'Printer', 3, 150.00),
    (4, 2, 'Keyboard', 1, 30.00),
    (5, 3, 'Headphones', 2, 50.00),
    (6, 3, 'Monitor', 1, 200.00),
    (7, 4, 'Tablet', 2, 100.00),
    (8, 4, 'External Hard Drive', 1, 80.00),
    (9, 5, 'Smartphone', 1, 150.00),
    (10, 5, 'Digital Camera', 1, 120.00),
    (11, 6, 'Printer', 1, 150.00),
    (12, 6, 'Keyboard', 1, 30.00),
    (13, 7, 'Wireless Mouse', 1, 20.00),
    (14, 7, '27-inch Monitor', 2, 180.00),
    (15, 8, 'Laptop', 1, 75.00),
    (16, 8, 'Bluetooth Headphones', 1, 50.00),
    (17, 9, 'Tablet', 1, 100.00),
    (18, 9, 'Digital Camera', 2, 120.00),
    (19, 10, 'Smartphone', 1, 150.00),
    (20, 10, 'External Hard Drive', 1, 80.00),
    (21, 11, 'Printer', 1, 150.00),
    (22, 11, 'Keyboard', 1, 30.00),
    (23, 12, 'Wireless Mouse', 1, 20.00),
    (24, 12, '27-inch Monitor', 2, 180.00),
    (25, 13, 'Laptop', 1, 75.00),
    (26, 13, 'Bluetooth Headphones', 1, 50.00),
    (27, 14, 'Tablet', 1, 100.00),
    (28, 14, 'Digital Camera', 1, 120.00),
    (29, 15, 'Smartphone', 2, 150.00),
    (30, 15, 'External Hard Drive', 1, 80.00),
    (31, 16, 'Printer', 1, 150.00),
    (32, 16, 'Keyboard', 1, 30.00),
    (33, 17, 'Wireless Mouse', 1, 20.00),
    (34, 17, '27-inch Monitor', 2, 180.00),
    (35, 18, 'Laptop', 1, 75.00),
    (36, 18, 'Bluetooth Headphones', 1, 50.00),
    (37, 19, 'Tablet', 1, 100.00),
    (38, 19, 'Digital Camera', 2, 120.00),
    (39, 20, 'Smartphone', 1, 150.00),
    (40, 20, 'External Hard Drive', 1, 80.00),
    (41, 21, 'Printer', 1, 150.00),
    (42, 21, 'Keyboard', 1, 30.00),
    (43, 22, 'Wireless Mouse', 1, 20.00),
    (44, 22, '27-inch Monitor', 2, 180.00),
    (45, 23, 'Laptop', 1, 75.00),
    (46, 23, 'Bluetooth Headphones', 1, 50.00),
    (47, 24, 'Tablet', 1, 100.00),
    (48, 24, 'Digital Camera', 1, 120.00),
    (49, 25, 'Smartphone', 2, 150.00),
    (50, 25, 'External Hard Drive', 1, 80.00),
    (51, 26, 'Wireless Mouse', 1, 20.00),
    (52, 26, '27-inch Monitor', 2, 180.00),
    (53, 27, 'Laptop', 1, 75.00),
    (54, 27, 'Bluetooth Headphones', 1, 50.00),
    (55, 28, 'Tablet', 1, 100.00),
    (56, 28, 'Digital Camera', 2, 120.00),
    (57, 29, 'Smartphone', 1, 150.00),
    (58, 29, 'External Hard Drive', 1, 80.00),
    (59, 30, 'Printer', 1, 150.00),
    (60, 30, 'Keyboard', 1, 30.00),
    (61, 31, 'Wireless Mouse', 1, 20.00),
    (62, 31, '27-inch Monitor', 2, 170.00),
    (63, 32, 'Laptop', 1, 75.00),
    (64, 32, 'Bluetooth Headphones', 1, 50.00),
    (65, 33, 'Tablet', 1, 100.00),
    (66, 33, 'Digital Camera', 2, 120.00),
    (67, 34, 'Smartphone', 1, 150.00),
    (68, 34, 'External Hard Drive', 1, 80.00),
    (69, 35, 'Printer', 1, 150.00),
    (70, 35, 'Keyboard', 1, 30.00),
    (71, 36, 'Wireless Mouse', 1, 20.00),
    (72, 36, '27-inch Monitor', 2, 180.00),
    (73, 37, 'Laptop', 1, 75.00),
    (74, 37, 'Bluetooth Headphones', 1, 50.00),
    (75, 38, 'Tablet', 1, 100.00),
    (76, 38, 'Digital Camera', 2, 120.00),
    (77, 39, 'Smartphone', 1, 150.00),
    (78, 39, 'External Hard Drive', 1, 80.00),
    (79, 40, 'Printer', 1, 150.00),
    (80, 40, 'Keyboard', 1, 30.00),
    (81, 41, 'Wireless Mouse', 1, 20.00),
    (82, 41, '27-inch Monitor', 2, 180.00),
    (83, 42, 'Laptop', 1, 75.00),
    (84, 42, 'Bluetooth Headphones', 1, 50.00),
    (85, 43, 'Tablet', 1, 100.00),
    (86, 43, 'Digital Camera', 2, 120.00),
    (87, 44, 'Smartphone', 1, 150.00),
    (88, 44, 'External Hard Drive', 1, 80.00),
    (89, 45, 'Printer', 1, 150.00),
    (90, 45, 'Keyboard', 1, 30.00),
    (91, 46, 'Wireless Mouse', 1, 20.00),
    (92, 46, '27-inch Monitor', 2, 180.00),
    (93, 47, 'Laptop', 1, 75.00),
    (94, 47, 'Bluetooth Headphones', 1, 50.00),
    (95, 48, 'Tablet', 1, 100.00),
    (96, 48, 'Digital Camera', 2, 120.00),
    (97, 49, 'Smartphone', 1, 150.00),
    (98, 49, 'External Hard Drive', 1, 80.00),
    (99, 50, 'Printer', 1, 150.00),
    (100, 50, 'Keyboard', 1, 30.00);