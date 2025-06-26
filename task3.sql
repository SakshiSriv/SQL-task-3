
-- Task 3: SELECT Queries Practice

-- Step 1: Create a new database
CREATE DATABASE IF NOT EXISTS task3;
USE task3;

-- Step 2: Create a table
CREATE TABLE IF NOT EXISTS Students (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    City VARCHAR(100)
);

-- Step 3: Insert sample data
INSERT INTO Students (Id, Name, Age, City) VALUES
(1, 'Rahul', 20, 'Delhi'),
(2, 'Priya', 22, 'Mumbai'),
(3, 'Amit', 19, 'Delhi'),
(4, 'Neha', 23, 'Chennai'),
(5, 'Raj', 21, 'Kolkata');

-- Step 4: SELECT queries

-- Show all data
SELECT * FROM Students;

-- Select specific columns
SELECT Name, City FROM Students;

-- Filter with WHERE
SELECT * FROM Students WHERE City = 'Delhi';

-- Filter with AND
SELECT * FROM Students WHERE Age > 20 AND City = 'Mumbai';

-- Filter with OR
SELECT * FROM Students WHERE City = 'Delhi' OR City = 'Chennai';

-- LIKE operator
SELECT * FROM Students WHERE Name LIKE 'R%';

-- BETWEEN operator
SELECT * FROM Students WHERE Age BETWEEN 20 AND 22;

-- Sort data
SELECT * FROM Students ORDER BY Age DESC;

-- Limit results
SELECT * FROM Students LIMIT 3;

-- DISTINCT values
SELECT DISTINCT City FROM Students;

-- Aliasing columns
SELECT Name AS StudentName, City AS Location FROM Students;
