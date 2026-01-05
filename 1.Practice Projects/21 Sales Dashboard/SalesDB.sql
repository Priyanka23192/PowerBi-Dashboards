Use salesDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(100),
    City NVARCHAR(50),
    State NVARCHAR(50)
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    Product NVARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Customers (CustomerName, City, State)
VALUES 
('Priya Sharma', 'Mumbai', 'Maharashtra'),
('Ravi Patel', 'Ahmedabad', 'Gujarat'),
('Anita Das', 'Kolkata', 'West Bengal'),
('Rahul Mehta', 'Delhi', 'Delhi');

INSERT INTO Sales (CustomerID, Product, Quantity, Price, SaleDate)
VALUES
(1, 'Laptop', 1, 65000, '2025-10-01'),
(1, 'Mouse', 2, 1200, '2025-10-05'),
(2, 'Keyboard', 1, 1500, '2025-10-08'),
(3, 'Monitor', 1, 12000, '2025-10-10'),
(4, 'Laptop', 1, 70000, '2025-10-11'),
(2, 'Mouse', 1, 600, '2025-10-12');


select * from Sales;

select * from Customers;


