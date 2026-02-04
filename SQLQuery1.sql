-- TASK 1

CREATE DATABASE employee1
USE employee1

-- Create tables
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary INT,
    DeptID INT
);
GO

-- Insert data
INSERT INTO Departments VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing'),
(5,'Sales');

INSERT INTO Employees VALUES
(101,'Siya',600000,1),
(102,'Rohan',650000,2),
(103,'Riya',500000,4),
(104,'Aman',550000,NULL);
GO

-- INNER JOIN
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID;

-- LEFT JOIN
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
LEFT JOIN Departments d
ON e.DeptID = d.DeptID;

-- RIGHT JOIN
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
RIGHT JOIN Departments d
ON e.DeptID = d.DeptID;

-- LEFT ANTI JOIN (Employees without department)
SELECT e.EmpID, e.EmpName
FROM Employees e
LEFT JOIN Departments d
ON e.DeptID = d.DeptID
WHERE d.DeptID IS NULL;

-- RIGHT ANTI JOIN 
SELECT d.DeptID, d.DeptName
FROM Employees e
RIGHT JOIN Departments d
ON e.DeptID = d.DeptID
WHERE e.EmpID IS NULL;

-- FULL OUTER JOIN
SELECT e.EmpID, e.EmpName, d.DeptName
FROM Employees e
FULL OUTER JOIN Departments d
ON e.DeptID = d.DeptID;
GO

SELECT * FROM Departments
SELECT * FROM Employees

-- TASK 2

--SUBQUERY

SELECT EmpID, EmpName, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

--WINDOW FUNCTION

SELECT 
    EmpID,
    EmpName,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;

--CTE ( COMMON TABLE EXPRESSION )

WITH HighSalary AS (
    SELECT EmpID, EmpName, Salary
    FROM Employees
    WHERE Salary > 600000
)
SELECT * FROM HighSalary;

--AGGREGATION

SELECT 
    DeptID,
    COUNT(EmpID) AS TotalEmployees,
    AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID;

--JOIN + AGGREGATION

SELECT 
    DeptID,
    COUNT(EmpID) AS TotalEmployees,
    AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID;