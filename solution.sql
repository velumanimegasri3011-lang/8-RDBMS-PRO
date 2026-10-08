-- ============================================
-- SOLUTION - EMPLOYEE AGGREGATE FUNCTIONS
-- ============================================

USE CollegeDB;

-- Create Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(30) NOT NULL,
    Department VARCHAR(20) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- Insert employee records
INSERT INTO Employee
    (EmployeeID, EmployeeName, Department, Salary)
VALUES
    (101, 'Ravi', 'HR', 25000),
    (102, 'Meena', 'IT', 40000),
    (103, 'Kumar', 'Finance', 35000),
    (104, 'Suresh', 'IT', 45000),
    (105, 'Latha', 'HR', 30000);

-- COUNT() - Count the number of salaries
SELECT COUNT(Salary) AS Total_Employees
FROM Employee;

-- MAX() - Find the highest salary
SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

-- MIN() - Find the lowest salary
SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

-- AVG() - Find the average salary
SELECT AVG(Salary) AS Average_Salary
FROM Employee;
