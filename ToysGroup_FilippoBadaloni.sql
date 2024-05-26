-- Creazione delle tabelle
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Category VARCHAR(255) NOT NULL
);

CREATE TABLE Region (
    RegionID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    RegionID INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);

-- Popolamento delle tabelle
INSERT INTO Product (ProductID, Name, Category) VALUES
(1, 'Toy Car', 'Vehicles'),
(2, 'Doll', 'Figures'),
(3, 'Puzzle', 'Games'),
(4, 'Building Blocks', 'Construction'),
(5, 'Action Figure', 'Figures'),
(6, 'Board Game', 'Games'),
(7, 'Remote Control Car', 'Vehicles'),
(8, 'Stuffed Animal', 'Figures'),
(9, 'Educational Tablet', 'Electronics'),
(10, 'Musical Toy', 'Instruments'),
(11, 'Train Set', 'Vehicles'),
(12, 'Lego Set', 'Construction'),
(13, 'Toy Kitchen', 'Role Play'),
(14, 'Robot', 'Electronics'),
(15, 'Bicycle', 'Vehicles'),
(16, 'Scooter', 'Vehicles'),
(17, 'Drone', 'Electronics'),
(18, 'Action Hero', 'Figures'),
(19, 'Board Puzzle', 'Games'),
(20, 'Craft Kit', 'Art'),
(21, 'Art Supplies', 'Art'),
(22, 'Model Kit', 'Construction'),
(23, 'Playhouse', 'Role Play'),
(24, 'Sports Equipment', 'Sports'),
(25, 'Puzzle Box', 'Games'),
(26, 'Toy Soldiers', 'Figures'),
(27, 'RC Helicopter', 'Vehicles'),
(28, 'Card Game', 'Games'),
(29, 'Chess Set', 'Games'),
(30, 'Toy Gun', 'Role Play'),
(31, 'Water Gun', 'Role Play'),
(32, 'Yo-Yo', 'Classic Toys'),
(33, 'Kite', 'Outdoor'),
(34, 'Skipping Rope', 'Sports'),
(35, 'Toy Train', 'Vehicles'),
(36, 'Toy Plane', 'Vehicles'),
(37, 'Magic Set', 'Role Play'),
(38, 'Toy Drum', 'Instruments'),
(39, 'Keyboard', 'Instruments'),
(40, 'Toy Saxophone', 'Instruments'),
(41, 'Toy Flute', 'Instruments'),
(42, 'Science Kit', 'Educational'),
(43, 'Math Kit', 'Educational'),
(44, 'Alphabet Blocks', 'Educational'),
(45, 'Toy Microscope', 'Educational'),
(46, 'Dinosaur Toy', 'Figures'),
(47, 'Soft Ball', 'Sports'),
(48, 'RC Boat', 'Vehicles'),
(49, 'Superhero Cape', 'Role Play'),
(50, 'Toy Doctor Set', 'Role Play');

INSERT INTO Region (RegionID, Name) VALUES
(1, 'North America'),
(2, 'Europe'),
(3, 'Asia'),
(4, 'South America'),
(5, 'Africa'),
(6, 'Australia'),
(7, 'Antarctica'),
(8, 'Middle East'),
(9, 'Eastern Europe'),
(10, 'Central America');

INSERT INTO Sales (SalesID, ProductID, RegionID, Date, Amount) VALUES
(1, 1, 1, '2023-01-15', 20.00),
(2, 2, 2, '2023-01-20', 15.00),
(3, 1, 3, '2023-02-10', 25.00),
(4, 3, 1, '2023-02-15', 30.00),
(5, 2, 3, '2023-03-05', 20.00),
(6, 4, 4, '2023-03-10', 35.00),
(7, 5, 5, '2023-03-15', 45.00),
(8, 6, 6, '2023-03-20', 50.00),
(9, 7, 7, '2023-03-25', 55.00),
(10, 8, 8, '2023-03-30', 60.00),
(11, 9, 9, '2022-01-15', 25.00),
(12, 10, 10, '2022-01-20', 30.00),
(13, 11, 1, '2022-02-10', 35.00),
(14, 12, 2, '2022-02-15', 40.00),
(15, 13, 3, '2022-03-05', 45.00),
(16, 14, 4, '2022-03-10', 50.00),
(17, 15, 5, '2022-03-15', 55.00),
(18, 16, 6, '2022-03-20', 60.00),
(19, 17, 7, '2022-03-25', 65.00),
(20, 18, 8, '2022-03-30', 70.00),
(21, 19, 9, '2021-01-15', 30.00),
(22, 20, 10, '2021-01-20', 35.00),
(23, 21, 1, '2021-02-10', 40.00),
(24, 22, 2, '2021-02-15', 45.00),
(25, 23, 3, '2021-03-05', 50.00),
(26, 24, 4, '2021-03-10', 55.00),
(27, 25, 5, '2021-03-15', 60.00),
(28, 26, 6, '2021-03-20', 65.00),
(29, 27, 7, '2021-03-25', 70.00),
(30, 28, 8, '2021-03-30', 75.00),
(31, 29, 9, '2020-01-15', 35.00),
(32, 30, 10, '2020-01-20', 40.00),
(33, 31, 1, '2020-02-10', 45.00),
(34, 32, 2, '2020-02-15', 50.00),
(35, 33, 3, '2020-03-05', 55.00),
(36, 34, 4, '2020-03-10', 60.00),
(37, 35, 5, '2020-03-15', 65.00),
(38, 36, 6, '2020-03-20', 70.00),
(39, 37, 7, '2020-03-25', 75.00),
(40, 38, 8, '2020-03-30', 80.00),
(41, 39, 9, '2019-01-15', 40.00),
(42, 40, 10, '2019-01-20', 45.00),
(43, 41, 1, '2019-02-10', 50.00),
(44, 42, 2, '2019-02-15', 55.00),
(45, 43, 3, '2019-03-05', 60.00),
(46, 44, 4, '2019-03-10', 65.00),
(47, 45, 5, '2019-03-15', 70.00),
(48, 46, 6, '2019-03-20', 75.00),
(49, 47, 7, '2019-03-25', 80.00),
(50, 48, 8, '2019-03-30', 85.00);

-- Verifica univocità PK
SELECT ProductID, COUNT(*) AS Cnt FROM Product GROUP BY ProductID HAVING Cnt > 1;
SELECT RegionID, COUNT(*) AS Cnt FROM Region GROUP BY RegionID HAVING Cnt > 1;
SELECT SalesID, COUNT(*) AS Cnt FROM Sales GROUP BY SalesID HAVING Cnt > 1;

-- Fatturato per prodotto per anno
SELECT Product.Name, YEAR(Sales.Date) AS Year, SUM(Sales.Amount) AS TotalRevenue
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY Product.Name, YEAR(Sales.Date);

-- Fatturato totale per stato per anno
SELECT Region.Name, YEAR(Sales.Date) AS Year, SUM(Sales.Amount) AS TotalRevenue
FROM Sales
JOIN Region ON Sales.RegionID = Region.RegionID
GROUP BY Region.Name, YEAR(Sales.Date)
ORDER BY Year, TotalRevenue DESC;

-- Categoria di articoli più richiesta
SELECT Product.Category, SUM(Sales.Amount) AS TotalRevenue
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY Product.Category
ORDER BY TotalRevenue DESC
LIMIT 1;

-- Prodotti invenduti
SELECT Product.Name
FROM Product
LEFT JOIN Sales ON Product.ProductID = Sales.ProductID
WHERE Sales.SalesID IS NULL;

SELECT Name
FROM Product
WHERE ProductID NOT IN (SELECT ProductID FROM Sales);

-- Ultima data di vendita per prodotto
SELECT Product.Name, MAX(Sales.Date) AS LastSaleDate
FROM Sales
JOIN Product ON Sales.ProductID = Product.ProductID
GROUP BY Product.Name;
