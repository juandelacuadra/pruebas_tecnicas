-- ELIMINA LAS TABLAS SI EXISTEN PARA EVITAR ERRORES
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- CREACIÓN DE LAS DOS TABLAS
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- VALORES DUMMIES
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT'),
    (4, 'Sales'),
    (5, 'Marketing'),
    (6, 'Operations'),
    (7, 'Research'),
    (8, 'Customer Service');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES
    (1, 'John', 'Doe', 6, 37812.49),
    (2, 'Jane', 'Smith', 2, 34827.13),
    (3, 'Michael', 'Johnson', 7, 40298.89),
    (4, 'Emily', 'Williams', 3, 28543.73),
    (5, 'David', 'Brown', 5, 29152.06),
    (6, 'Sarah', 'Jones', 8, 57833.16),
    (7, 'Daniel', 'Miller', 5, 40979.35),
    (8, 'Olivia', 'Davis', 4, 50891.27),
    (9, 'William', 'Wilson', 2, 48124.88),
    (10, 'Ava', 'Martinez', 8, 65013.19),
    (11, 'James', 'Taylor', 7, 46025.01),
    (12, 'Sophia', 'Anderson', 4, 58642.81),
    (13, 'Benjamin', 'Thomas', 6, 55772.59),
    (14, 'Isabella', 'Hernandez', 1, 30654.29),
    (15, 'Ethan', 'Lopez', 8, 58811.25),
    (16, 'Mia', 'Garcia', 7, 53436.27),
    (17, 'Alexander', 'Lee', 3, 40394.47),
    (18, 'Emma', 'Moore', 2, 41383.83),
    (19, 'Daniel', 'Jackson', 8, 61047.56),
    (20, 'Aiden', 'White', 1, 30592.99),
    (21, 'Oliver', 'Johnson', 3, 42568.41),
    (22, 'Sophia', 'Davis', 4, 52872.98),
    (23, 'Liam', 'Miller', 5, 28419.73),
    (24, 'Emma', 'Williams', 7, 59025.27),
    (25, 'Noah', 'Martinez', 1, 46738.67),
    (26, 'Olivia', 'Taylor', 2, 34990.08),
    (27, 'Liam', 'Wilson', 8, 60927.79),
    (28, 'Emma', 'Brown', 5, 42260.54),
    (29, 'Noah', 'Smith', 6, 52312.92),
    (30, 'Ava', 'Garcia', 7, 47698.31),
    (31, 'Sophia', 'Jones', 3, 51890.42),
    (32, 'Liam', 'Moore', 4, 45510.78),
    (33, 'Isabella', 'Lee', 2, 28264.23),
    (34, 'Oliver', 'Hernandez', 1, 44987.60),
    (35, 'Emma', 'Thomas', 8, 51963.95),
    (36, 'Noah', 'Jackson', 5, 52342.17),
    (37, 'Olivia', 'Johnson', 6, 37051.84),
    (38, 'Sophia', 'Smith', 7, 55308.70),
    (39, 'Lucas', 'Jones', 3, 31165.80),
    (40, 'Sophia', 'Garcia', 6, 39315.24);

